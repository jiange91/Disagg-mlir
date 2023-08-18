s1_nb = 512 * 1024
s1_n_block = 24

# cache id, type, token offset, raddr offset, laddr offset, slots, line size bytes, qid
# 0-direct 1-set 2-full'
rfwd = f'1 0 {6*s1_n_block} {6<<30} {6<<30} {s1_n_block} {s1_nb} 6'
rpsg = f'2 0 {3*s1_n_block} {3<<30} {3<<30} {s1_n_block} {s1_nb * 4} 3'
rpmon = f'3 0 {13*s1_n_block} {13<<30} {13<<30} {s1_n_block} {s1_nb * 2} 13'
rpday = f'4 0 {12*s1_n_block} {12<<30} {12<<30} {s1_n_block} {s1_nb * 2} 12'
ridx = f'5 0 {9*s1_n_block} {9<<30} {9<<30} {s1_n_block} {s1_nb * 8} 9'
rhvs = f'6 0 {11*s1_n_block} {11<<30} {11<<30} {s1_n_block} {s1_nb * 8} 11'
rdlat = f'7 0 {8*s1_n_block} {8<<30} {8<<30} {s1_n_block} {s1_nb * 8} 8'
rdlon = f'8 0 {7*s1_n_block} {7<<30} {7<<30} {s1_n_block} {s1_nb * 8} 7'
rplat = f'9 0 {5*s1_n_block} {5<<30} {5<<30} {s1_n_block} {s1_nb * 8} 5'
rplon = f'10 0 {4*s1_n_block} {4<<30} {4<<30} {s1_n_block} {s1_nb * 8} 4'
rdur = f'11 0 {10*s1_n_block} {10<<30} {10<<30} {s1_n_block} {s1_nb * 8} 10'
rvid = f'12 0 {0*s1_n_block} {0} {0} {s1_n_block} {s1_nb * 4} 0'
rpick = f'13 0 {1*s1_n_block} {1<<30} {1<<30} {s1_n_block} {s1_nb * 8} 1'
rdrop = f'14 0 {2*s1_n_block} {2<<30} {2<<30} {s1_n_block} {s1_nb * 8} 2'

cfg = '\n'.join([rfwd, rpsg, rpmon, rpday, ridx, rhvs, rdlat, rdlon, rplat, rplon, rdur, rvid, rpick, rdrop])
print(cfg)