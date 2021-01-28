<div id="footer"><!-- #footer Begin -->
    <div class="container"><!-- container Begin -->
        <div class="row"><!-- row Begin -->
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
               
               <h4>Stránky</h4>
                
                <ul><!-- ul Begin -->
                    <li><a href="cart.php">Košík</a></li>
                    <li><a href="contact.php">Kontaktujte nás</a></li>
                    <li><a href="shop.php">Obchod</a></li>
                    <li><a href="customer/my_account.php">Môj účet</a></li>
                </ul><!-- ul Finish -->
                

                
                
                
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="com-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
            <h4>Pre používateľov</h4>
                
                <ul><!-- ul Begin -->
                           
                           <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='checkout.php'>Registrovať sa</a>";
                               
                           }else{
                               
                              echo"<a href='customer/my_account.php?my_orders'>Môj účet</a>"; 
                               
                           }
                           
                           ?>
                    
                    <li><a href="terms.php">Všeobecné podmienky používania</a></li>
                </ul><!-- ul Finish -->
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Kde nás nájdete</h4>
                
                <p><!-- p Start -->
                    
                    <strong>Papoocha, s.r.o</strong>
                    <br/>Papučová 42
                    <br/>821 42 Bratislava
                    <br/>+421-900-42-42-42
                    <br/>papoocha@gmail.com
                    
                </p><!-- p Finish -->
                
                <a href="contact.php">Kontaktný formulár</a>
                
                <hr class="hidden-md hidden-lg">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3">
                
                <h4>Buďte pravidelne v papučiach</h4>
                
                <p class="text-muted">
                    Zaregistrujte sa na náš newsletter a dostávajte top novinky, zľavové kupóny a info o akciách.
                </p>
                
                <form action="https://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('https://feedburner.google.com/fb/a/mailverify?uri=Papoocha', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true" method="post"><!-- form begin -->
                    <div class="input-group"><!-- input-group begin -->
                        
                        <input type="text" class="form-control" name="email">
                        
                        <input type="hidden" value="Papoocha" name="uri"/><input type="hidden" name="loc" value="en_US"/>
                        
                        <span class="input-group-btn"><!-- input-group-btn begin -->
                            
                            <input type="submit" value="Chcem odoberať" class="btn btn-default">
                            
                        </span><!-- input-group-btn Finish -->
                        
                    </div><!-- input-group Finish -->
                </form><!-- form Finish -->
                
                <hr>
                
                <h4>Sledujte nás</h4>
                
                <p class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                </p>
                
            </div>
        </div><!-- row Finish -->
    </div><!-- container Finish -->
</div><!-- #footer Finish -->


<div id="copyright"><!-- #copyright Begin -->
    <div class="container"><!-- container Begin -->
        <div class="col-md-6"><!-- col-md-6 Begin -->
            
            <p class="pull-left">&copy; 2020 raditch. Tento e-shop je iba pre vzdelávacie účely</p>
            
        </div><!-- col-md-6 Finish -->
        <div class="col-md-6"><!-- col-md-6 Begin -->
            
            <p class="pull-right">Made by: <a href="https://www.radovankopecny.sk">raditch</a></p>
            
        </div><!-- col-md-6 Finish -->
    </div><!-- container Finish -->
</div><!-- #copyright Finish -->