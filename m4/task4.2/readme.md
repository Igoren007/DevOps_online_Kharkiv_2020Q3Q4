# Task4.2

## Задание 1.

Соберем схему сети для двух зданий.

![](images/Screenshot_1.png)

На каждое здание поставим по одному коммутатору, к которому по витой паре будут подключены ПК с обоих этажей. Коммутаторы подключены к маршрутизатору, который разместим в серверной одного из этих зданий. 
Настроим интерфейсы маршрутизатора.
![](images/cisco%20ip%20interfaces.png)

Также на маршрутизаторе поднимем DHCP сервер, который будет выдавать сетевые настройки для каждой сети.

![](images/cisco%20dhcp.png)

Посмотрим список выданных адресов

![](images/dhcp%20list.png)

Видим что компьтеры успешно получили настройки - IP адрес и шлюз по умолчанию.

Проверим работоспособность сети отправкой ICMP пакетов между компьютерами разных зданий.

![](images/icmp.png)

ICMP запрос успешно выполнен.

## Задание 2.

Для решения задачи собираем следующую схему:

![](images/4_2_2/sxema1.png)

На кажом этаже есть группы из 5 и 3 ПК соответсвенно, которые подключены к коммутатору доступа. Они в своию очередь объединяются общим коммутатором L3.

Создадим 8 VLANов, каждый будет соответствовать своей подсети. Пусть эти будут подсети:
```dos
172.16.10.0/24
172.16.11.0/24
172.16.12.0/24
172.16.13.0/24
172.16.14.0/24
172.16.15.0/24
172.16.16.0/24
172.16.17.0/24
```
Создадим на коммутаторах доступа соответствующие VLANы 

![](images/4_2_2/et1.png)

и транковый порт для соединения с коммутатором L3.

![](images/4_2_2/et1_trunk.png)

Аналогичные действия выполним для оставшихся коммутаторов доступа, создавая VLAN 12-17.

Создадим VLANы на коммутаторе L3 и назначим VLAN интерфейсам IP адреса.


Далее создадим для каждого VLAnа свой DHCP сервер. Включаем маршрутизацию на коммутаторе и создаем пулы DHCP.

![](images/4_2_2/ip%20routing.png)

![](images/4_2_2/dhcp%20pool.png)

Видим список IP, которые были разданы компьютерам. Кажды получил адрес соответствующий своему влану.

![](images/4_2_2/spisok%20ip.png)


Выполним проверку связи между ПК 172.16.10.1 и 172.16.12.1, как видим со скриншота, ICMP пакеты проходят.

![](images/4_2_2/test.png)

Таблица маршрутизации вланов на коммутаторе:

![](images/4_2_2/ip_rout_table.png)


## Задание 3.

Схема сети будет подобна предыдущему заданию - на каждое здание отдельный коммутатор и влан, все коммутаторы соединены с вышестоящим L3 коммутатором Cisco 3560 в нашем случае, который подключен к маршрутизатору.

![](images/4_2_3/sxema.png)

На коммутаторах доступа добавим все порты в соответствующий влан, и один порт сделаем транковым для связи с вышестоящим коммутатором.

![](images/4_2_3/vlan10.png)

Повторим эти действия для каждого влана - 10,20,30,40,50.
На L3 создаем эти вланы, каждому влану присваиваем IP адрес, включаем ip routing создаем пулы адресов dhcp для отдельных подсетей.


```dos
Switch(config)#int vlan 10
Switch(config-if)#ip address 172.16.10.254 255.255.255.0
Switch(config-if)#exit
Switch(config)#int vlan 20
Switch(config-if)#ip address 172.16.20.254 255.255.255.0
Switch(config-if)#exit
Switch(config)#int vlan 30
Switch(config-if)#ip address 172.16.30.254 255.255.255.0
Switch(config-if)#exit
Switch(config)#int vlan 40
Switch(config-if)#ip address 172.16.40.254 255.255.255.0
Switch(config-if)#int vlan 50
Switch(config-if)#ip address 172.16.50.254 255.255.255.0
Switch(config-if)#exit
Switch(config)#ip routing
Switch(config)#ip dhcp pool vl10
Switch(dhcp-config)#network 172.16.10.0 255.255.255.0
Switch(dhcp-config)#default-router 172.16.10.254
Switch(dhcp-config)#exit
Switch(config)#ip dhcp pool vl20
Switch(dhcp-config)#network 172.16.20.0 255.255.255.0
Switch(dhcp-config)#default-router 172.16.20.254
Switch(dhcp-config)#exit
Switch(config)#ip dhcp pool vl30
Switch(dhcp-config)#network 172.16.30.0 255.255.255.0
Switch(dhcp-config)#default-router 172.16.30.254
Switch(dhcp-config)#exit
Switch(config)#ip dhcp pool vl40
Switch(dhcp-config)#network 172.16.40.0 255.255.255.0
Switch(dhcp-config)#default-router 172.16.40.254
Switch(dhcp-config)#exit
Switch(config)#ip dhcp pool vl50
Switch(dhcp-config)#network 172.16.50.0 255.255.255.0
Switch(dhcp-config)#default-router 172.16.50.254
Switch(dhcp-config)#exit
Switch(config)#
```

Првоерим связь между ПК в разных подсетях. Пакеты проходят.

![](images/4_2_3/svyaz.png)

Теперь настроим связь с маршрутизатором Router0. Трафик, не предназначенный сетям существующих VLAN должен передаваться на Router0.

Настройка коммутатора:

```dos
Switch(config)#interface fa0/6
Switch(config-if)#ip address 192.168.1.1 255.255.255.0
Switch(config-if)#no shutdown 
Switch(config-if)#no switchport 
Switch(config-if)#exit
Switch(config)#ip route 0.0.0.0 0.0.0.0 192.168.1.254
Switch(config)#
```
Настройка маршрутизатора:

```dos
Router(config)#int fa0/0
Router(config-if)#ip address 192.168.1.254 255.255.255.0
Router(config-if)#no shutdown
Router(config)#ip route 172.16.20.0 255.255.255.0 192.168.1.1
Router(config)#ip route 172.16.10.0 255.255.255.0 192.168.1.1
Router(config)#ip route 172.16.30.0 255.255.255.0 192.168.1.1
Router(config)#ip route 172.16.40.0 255.255.255.0 192.168.1.1
Router(config)#ip route 172.16.50.0 255.255.255.0 192.168.1.1
```

Пинги с ПК проходят на маршрутизатор и обратно.

![](images/4_2_3/test.png)


