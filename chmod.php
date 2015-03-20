<?php

@mkdir('/var/www/html/dhdc/frontend/web/assets/', 0777);
@mkdir('/var/www/html/dhdc/backend/web/assets/', 0777);
@mkdir('/var/www/html/dhdc/frontend/web/fortythree/', 0777);
@mkdir('/var/www/html/dhdc/frontend/web/fortythreebackup/', 0777);

chmod('/var/www/html/dhdc/frontend/web/assets/', 0777);
chmod('/var/www/html/dhdc/backend/web/assets/', 0777);
chmod('/var/www/html/dhdc/frontend/web/fortythree/', 0777);
chmod('/var/www/html/dhdc/frontend/web/fortythreebackup/', 0777);
echo "CHMOD SUCCESS\r\n";

