<?php

    
    include_once("../../dao/manipuladados.php");

    session_start();
    
    $id_curso = $_POST['id_curso'];

                        
                        // ============================================== Parte Do FPDF ==============================================

                            $manipula = new manipuladados;
                            $usuario = $manipula->getUsuarioByEmail($_COOKIE['email'])[0]['nome_completo'];

                            $curso = $manipula->getCursos($id_curso)[0]['titulo'];
                            $horas = $manipula->getCursos($id_curso)[0]['horas'];

                            require "../../fpdf185/fpdf.php";
                            $pdf = new FPDF("L","pt","A4");
                            $pdf->AddPage();

                            $pdf->Image("../../img/icons/certificadoFundo.png",-3,0, 850, 595);
                            $pdf->SetFont("Arial", "B", 38);
                            $pdf->Ln(110);
                        
                            $Certificado = utf8_decode("Certificado");
                            $pdf->Cell(0,0,$Certificado,0,0,"C");
                            $pdf->Ln(110);

                            $pdf->SetFont("Arial", "", 28);
                            $Certificamos = utf8_decode("Certificamos que");
                            $pdf->Cell(305,7,$Certificamos,0,0,"C");

                            $pdf->SetFont("Arial", "", 20);
                            $pdf->Cell(210,7,$usuario,0,0,"C");
                            $pdf->Ln(55);

                            $pdf->SetFont("Arial", "", 28);
                            $Concluiu = utf8_decode("Concluiu o curso de");
                            $pdf->Cell(340,7,$Concluiu,0,0,"C");
                            $pdf->SetFont("Arial", "", 20);
                            $pdf->Cell(110,7,$curso,0,0,"C");
                            $pdf->Ln(34);

                            $CargaHoraria = utf8_decode("com carga horária de ");
                            $pdf->SetFont("Arial", "", 28);
                            $pdf->Cell(370,7,$CargaHoraria,0,0,"C");
                            $pdf->SetFont("Arial", "", 20);
                            $pdf->Cell(80,7,$horas,0,0,"C");
                            $pdf->Cell(50,7,"horas",0,0,"C");
                            $pdf->Ln(168);

                            $pdf->SetFont("Arial", "", 18);
                            $Assinatura = utf8_decode("Assinatura");
                            $pdf->Cell(0,0,$Assinatura,0,0,"C");
                            

                            //linhas
                            $pdf->Line(300,270,756,270);
                            $pdf->Line(300,270,756,270);
                            $pdf->Line(340,320,756,320);
                            $pdf->Line(340,320,756,320);
                            $pdf->Line(360,355,756,355);
                            $pdf->Line(360,355,756,355);

                            $pdf->Line(150,480,700,480);
                           

                            
                            




                           


                            


                            //finalizando o pdf
                            $pdf->Output("I", "boleto.pdf", true);
                            // =======================================================================================================================================

                      ?> 