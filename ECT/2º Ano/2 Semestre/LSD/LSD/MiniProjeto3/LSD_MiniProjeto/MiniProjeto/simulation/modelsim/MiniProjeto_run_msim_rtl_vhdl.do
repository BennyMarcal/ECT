transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/mnt/Data/004_Escola/UA/Disciplinas/LSD/Quartus/LSD_MiniProjeto/MiniProjeto/CounterDown4.vhd}

