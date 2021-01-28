  
   <?php 
    
    $session_email = $_SESSION['customer_email'];
    
    $select_customer = "select * from customers where customer_email='$session_email'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $row_customer = mysqli_fetch_array($run_customer);
    
    $customer_id = $row_customer['customer_id'];
    
    ?>

    
       <div id="cart" class="col-md-9"><!-- col-md-9 Begin -->
           
           <div class="box"><!-- box Begin -->
               
               <form action="cart.php" method="post" enctype="multipart/form-data"><!-- form Begin -->
                   
                   <h1>Sumár objednávky</h1>
                   
                   <?php 
                   
                   $ip_add = getRealIpUser();
                   
                   $select_cart = "select * from cart where ip_add='$ip_add'";
                   
                   $run_cart = mysqli_query($con,$select_cart);
                   
                   $count = mysqli_num_rows($run_cart);
                   
                   ?>
                   
                   <div class="table-responsive"><!-- table-responsive Begin -->
                       
                       <table class="table"><!-- table Begin -->
                           
                           <thead><!-- thead Begin -->
                               
                               <tr><!-- tr Begin -->
                                   
                                   <th colspan="2">Tovar</th>
                                   <th>Množstvo</th>
                                   <th>Cena</th>
                                   <th>Veľkosť</th>

                                   <th colspan="2">Celkom</th>
                                   
                               </tr><!-- tr Finish -->
                               
                           </thead><!-- thead Finish -->
                           
                           <tbody><!-- tbody Begin -->
                              
                              <?php 
                               
                               $total = 0;

                               $output_paypal = '';
                               
                               while($row_cart = mysqli_fetch_array($run_cart)){
                                   
                                 $pro_id = $row_cart['p_id'];
                                   
                                 $pro_size = $row_cart['size'];
                                   
                                 $pro_qty = $row_cart['qty'];

                                 $pro_sale = $row_cart['p_price'];
                                   
                                   $get_products = "select * from products where product_id='$pro_id'";
                                   
                                   $run_products = mysqli_query($con,$get_products);
                                   
                                   while($row_products = mysqli_fetch_array($run_products)){
                                       
                                       $product_title = $row_products['product_title'];
                                       
                                       $product_img1 = $row_products['product_img1'];
                                       
                                       $only_price = $row_products['product_price'];
                                       
                                       $pro_url = $row_products['product_url'];
                                       
                                       $sub_total = $pro_sale*$pro_qty;

                                       $_SESSION['pro_qty'] = $pro_qty;
                                       
                                       $total += $sub_total;
                       
                                       
                               ?>
                               
                               <tr><!-- tr Begin -->
                                   
                                   <td>
                                       
                                       <img class="img-responsive" src="admin_area/product_images/<?php echo $product_img1; ?>" alt="Product 3a">
                                       
                                   </td>
                                   
                                   <td>
                                       
                                       <a href="<?php echo $pro_url; ?>"> <?php echo $product_title; ?> </a>
                                       
                                   </td>
                                   
                                   <td>
                                      
                                       <?php echo $_SESSION['pro_qty']; ?>
                                       
                                   </td>
                                   
                                   <td>
                                       
                                       <?php echo $pro_sale; ?>
                                       
                                   </td>
                                   
                                   <td>
                                       
                                       <?php echo $pro_size; ?>
                                       
                                   </td>
                                   

                                   
                                   <td>
                                       
                                       $<?php echo $sub_total; ?>
                                       
                                   </td>


                                   
                               </tr><!-- tr Finish -->
                               <tr>
                               
            
            
                               </tr> 


                   
                               <?php } } ?>
                               
                           </tbody><!-- tbody Finish -->

                           
                           <tfoot><!-- tfoot Begin -->
                               
                               <tr><!-- tr Begin -->
                                   
                                   <th colspan="5">Suma</th>
                                   <th colspan="2"><?php echo $total; ?> €</th>
                                   
                               </tr><!-- tr Finish -->
                               
                           </tfoot><!-- tfoot Finish -->
                           
                       </table><!-- table Finish -->

                        <h1 class="text-center">Možnosti platby</h1>  
                        <p class="lead text-center"><!-- lead text-center Begin -->

                            <a href="order.php?c_id=<?php echo $customer_id; ?>"> Prevodom na účet </a>

                        </p><!-- lead text-center Finish -->

                        <center><!-- center Begin -->



                        <p class="lead"><!-- lead Begin -->
                                            
                            <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="upload" value="1">
                            <input type="hidden" name="business" value="pa@poocha.com">
                            <input type="hidden" name="currency_code" value="EUR">
                            <input type='hidden' name='return' value='http://localhost/papoocha/thank_you.php?c_id=<?php echo $customer_id; ?>'>
                            <input type="hidden" name="item_name_1" value="váš nákup">
                            <input type="hidden" name="amount_1" value="<?php echo $total; ?>">
                            <input type="image" src="http://www.paypal.com/en_US/i/btn/x-click-but01.gif" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
                            </form> 


                        </p> <!-- lead Finish -->

                       
                   </div><!-- table-responsive Finish -->
                   

                   
               </form><!-- form Finish -->
               
           </div><!-- box Finish -->

 

           
           
       </div><!-- col-md-9 Finish -->
       
       <div class="col-md-3"><!-- col-md-3 Begin -->
           
           <div id="order-summary" class="box"><!-- box Begin -->
               
               <div class="box-header"><!-- box-header Begin -->
                   
                   <h3>Sumár objednávky</h3>
                   
               </div><!-- box-header Finish -->
               
               <p class="text-muted"><!-- text-muted Begin -->
                   
                   Doprava je započítaná do celkovej ceny, u nás vždy 0, lebo sme zabudli doprogramovať jednu nenáročnú funkciu, ktorá by dala dopravu zadarmo od 30 eur.
                   
               </p><!-- text-muted Finish -->
               
               <div class="table-responsive"><!-- table-responsive Begin -->
                   
                   <table class="table"><!-- table Begin -->
                       
                       <tbody><!-- tbody Begin -->
                           
                           <tr><!-- tr Begin -->
                               
                               <td> Sumár objednávky </td>
                               <th> <?php echo $total; ?> €</th>
                               
                           </tr><!-- tr Finish -->
                           
                           <tr><!-- tr Begin -->
                               
                               <td> Doprava </td>
                               <td> 0 €</td>
                               
                           </tr><!-- tr Finish -->
                           
                           <tr><!-- tr Begin -->
                               
                               <td> DPH </td>
                               <th> <?php echo $total*0.2; ?> €</th>
                               
                           </tr><!-- tr Finish -->
                           
                           <tr class="total"><!-- tr Begin -->
                               
                               <td> Celkom </td>
                               <th> <?php echo $total; ?> €</th>
                               
                           </tr><!-- tr Finish -->
                           
                       </tbody><!-- tbody Finish -->
                       
                   </table><!-- table Finish -->
                   
               </div><!-- table-responsive Finish -->
               
           </div><!-- box Finish -->
           
       </div><!-- col-md-3 Finish -->

 
     </center><!-- center Finish -->
    

