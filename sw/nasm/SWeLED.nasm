; Arquivo: SWeLED.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça os LEDs exibirem 
; LED = OFF ON ON ON ON ON !SW3 !SW2 !SW1 OFF

;Carregando o valor dos !SWs
leaw $21185, %A 
movw (%A), %D
notw %D 
leaw $14 ,%A
andw %A, %D, %D

leaw $496, %A
orw %A, %D, %D

leaw $21184, %A  
movw %D, (%A) 

