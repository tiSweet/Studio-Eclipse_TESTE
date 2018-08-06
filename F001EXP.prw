#include "rwmake.ch" 
#include "apwebex.ch"
#include "tbiconn.ch"
#include "topconn.ch"

User Function F001EXP()
	Local cHTML:=""
	private nembar, TIPEM, exclusao, cSucesso, cZZ4_ERRO, cZZ8_ERRO, cErro_zz4_p1, cMsg_erro, cErro_zz4_p2, cErro_zz4_p3, cErro_zz4_p4, cErro_zz4_p5, cErro_zz4_p6
	private cErro_zz4_p7, cErro_zz4_p8, cErro_zz4_p9, cErro_zz4_p10, cErro_zz4_p11, cErro_zz4_p12, cErro_zz4_p13, cErro_zz4_p14, cErro_zz4_p15, cErro_zz4_p16 
	private cErro_zz4_p17, cErro_zz4_p18, cErro_zz4_p19, cErro_zz4_p20, cErro_zz4_p21, cErro_zz4_p22, cErro_zz4_p23, cErro_zz4_p24, cErro_zz4_p25, cErro_zz4_p26
	private cErro_zz4_p27, cErro_zz4_p28, cErro_zz4_p29, cErro_zz4_p30, cErro_zz4_p31, cErro_zz4_p32, cErro_zz4_p33, cErro_zz4_p34, cErro_zz4_p35, cErro_zz4_p36
	private cErro_zz4_p37, cErro_zz4_p38, cErro_zz4_p39, cErro_zz4_p40, cErro_zz4_p41, cErro_zz4_p42, cErro_zz4_p43, cErro_zz4_p44, cErro_zz4_p45, cErro_zz4_p46
	private cErro_zz4_p47, cErro_zz4_p48, cErro_zz4_p49, cErro_zz4_p50
	private cancelar
	
	
	Prepare environment empresa "01" filial "01" modulo "EEC"  
	
	
	nembar      := HttpGet->cnembar
	TIPEM       := HttpGet->cTIPEM		
	exclusao    := HttpGet->exc
	cZZ4_ERRO   := .F.
	cZZ8_ERRO   := .F.
	cP1Erro     := ""
	cP2Erro     := ""
    cP3Erro     := ""
    cP4Erro     := ""
    cP5Erro     := ""
    cP6Erro     := ""
    cP7Erro     := ""
    cP8Erro     := ""
    cP9Erro     := ""
    cP10Erro    := ""
    cP11Erro    := ""
    cP12Erro    := ""
    cP13Erro    := ""
    cP14Erro    := ""
    cP15Erro    := ""
    cP16Erro    := ""
    cP17Erro    := ""
    cP18Erro    := ""
    cP19Erro    := ""
    cP20Erro    := ""
    cP21Erro    := ""
    cP22Erro    := ""
    cP23Erro    := ""
    cP24Erro    := ""
    cP25Erro    := ""
    cP26Erro    := ""
    cP27Erro    := ""
    cP28Erro    := ""
    cP29Erro    := ""
    cP30Erro    := ""
    cP31Erro    := ""
    cP32Erro    := ""
    cP33Erro    := ""
    cP34Erro    := ""
    cP35Erro    := ""
    cP36Erro    := ""
    cP37Erro    := ""
    cP38Erro    := ""
    cP39Erro    := ""
    cP40Erro    := ""
    cP41Erro    := ""
    cP42Erro    := ""
    cP43Erro    := ""
    cP44Erro    := ""
    cP45Erro    := ""
    cP46Erro    := ""
    cP47Erro    := ""
    cP48Erro    := ""
    cP49Erro    := ""
    cP50Erro    := ""
	cMsg_erro   := ""
	
	HttpSession->zz4_erro := .F.
	
	Web Extended Init cHtml
	
	if exclusao=="0"
		dbSelectArea("ZZ4")
       	dbSetOrder(2) 
       	DbGoTop()
 		ZZ4->(dbseek(xFilial("ZZ4")+ Alltrim(nembar) + Alltrim(TIPEM)))
		RecLock("ZZ4",.F.)
		ZZ4->ZZ4_STATUS := "C"		
		MsUnlock()
		dbSelectArea("ZZ4")
	  	DbCloseArea()
	  	cancelar := '0'
 		cHTML:= H_F001EXP()
 	else 		
// 		dbSelectArea("ZZ4")
//       	dbSetOrder(2) 
//       	DbGoTop()
// 		ZZ4->(dbseek(xFilial("ZZ4")+ Alltrim(nembar) + Alltrim(TIPEM)))
//		RecLock("ZZ4",.F.)
//		ZZ4->(DBDELETE())
//		MsUnlock()
//		dbSelectArea("ZZ4")
//	  	DbCloseArea() 
//	  	cSucesso := ''
// 		cHTML:= H_F002EXP()
 	endif
 	
 	
 	
 Web Extended End
 

 
 RESET ENVIRONMENT

  Return cHTML
