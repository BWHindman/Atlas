  %  3   k820309    `          17.0        �wY                                                                                                           
       Grid.F90 GRID                                                     
                                                           
                                                                                                          7                                                                                                    0                                                                                                   13                                                  	       #         @                                                       #MYID    #GRIDFILE 	   #TILECOUNT 
   #NUMTILES    #IND    #VERBOSE                                                                                                     	                     1           D @                               
                      D @                                                       p          p            p                                                                                                                                        #         @                                                       #MYID    #GRIDFILE    #TILECOUNT    #LON    #LAT    #VERBOSE                                                                                                                          1           D @                                                    D @                                                   	     p          5 � p        r        5 � p        r                               D @                                                   	     p          5 � p        r        5 � p        r                                                                             #         @                                                       #TS    #LONRN    #LATRN    #CLON    #CLAT    #APODE    #LON    #LAT                                                                                                           	                                                       	                                                       	                                                       	                                                       	                 D                                                    	               &                                                     D                                                    	               &                                           #         @                                                       #DELTA_ROT    #A0 !   #A2 "   #A4 #   #LAT $   #NUM              D                                                     	     p          5 � p        r         5 � p        r                                                                  !     	                                                  "     	                                                  #     	                                                 $                    	     p          5 � p        r         5 � p        r                                                                               %         @                               %                           #TS &   #LONRN '   #LATRN (   #APODE )                                              &                                                       '     	                                                  (     	                                                  )     	       #         @                                   *                    #MYID +   #TILECOUNT ,   #DOTILESIZE -   #NUMTILES .   #LONRN /   #LATRN 0   #APODE 1   #VERBOSE 2                                              +                      D                                 ,                                                       -                    	    p          p            p                                    D                                 .                        p          p            p                                    D @                               /     	                 D @                               0     	                 D @                               1     	                                                  2               �         fn#fn    �   @   J   PARSEINPUT &   �   @   J   COMMUNICATION_LIBRARY 2   6  q       MPI_INTEGER+COMMUNICATION_LIBRARY 5   �  q       MPI_COMM_WORLD+COMMUNICATION_LIBRARY /     r       MPI_REAL+COMMUNICATION_LIBRARY %   �  @       DENSEPACK+PARSEINPUT    �  �       READGRID_HEAD #   ]  @   a   READGRID_HEAD%MYID '   �  L   a   READGRID_HEAD%GRIDFILE (   �  @   a   READGRID_HEAD%TILECOUNT '   )  �   a   READGRID_HEAD%NUMTILES "   �  @   a   READGRID_HEAD%IND &   �  @   a   READGRID_HEAD%VERBOSE    =  �       READGRID    �  @   a   READGRID%MYID "     L   a   READGRID%GRIDFILE #   W  @   a   READGRID%TILECOUNT    �  �   a   READGRID%LON    K  �   a   READGRID%LAT !   �  @   a   READGRID%VERBOSE    ?  �       GENERATEGRID     �  @   a   GENERATEGRID%TS #   	  @   a   GENERATEGRID%LONRN #   V	  @   a   GENERATEGRID%LATRN "   �	  @   a   GENERATEGRID%CLON "   �	  @   a   GENERATEGRID%CLAT #   
  @   a   GENERATEGRID%APODE !   V
  �   a   GENERATEGRID%LON !   �
  �   a   GENERATEGRID%LAT     n  �       SETTRACKINGRATE *   �  �   a   SETTRACKINGRATE%DELTA_ROT #   �  @   a   SETTRACKINGRATE%A0 #   �  @   a   SETTRACKINGRATE%A2 #   #  @   a   SETTRACKINGRATE%A4 $   c  �   a   SETTRACKINGRATE%LAT $     @   a   SETTRACKINGRATE%NUM    W  y       GETTILECOUNT     �  @   a   GETTILECOUNT%TS #     @   a   GETTILECOUNT%LONRN #   P  @   a   GETTILECOUNT%LATRN #   �  @   a   GETTILECOUNT%APODE    �  �       COUNTTILES     }  @   a   COUNTTILES%MYID %   �  @   a   COUNTTILES%TILECOUNT &   �  �   a   COUNTTILES%DOTILESIZE $   �  �   a   COUNTTILES%NUMTILES !   %  @   a   COUNTTILES%LONRN !   e  @   a   COUNTTILES%LATRN !   �  @   a   COUNTTILES%APODE #   �  @   a   COUNTTILES%VERBOSE 