#start states

    default {
        state_entry() {
            CheckBaseAssumptions();
            MessageConfig();

            // Give an extra prompt so it's obvious what's being waited on
            Message( MESSAGE_TEXT_AND_OWNER , "Please grant debit permission (touch to reset)..." );

            // Ask for permission
            llRequestPermissions( Owner , PERMISSION_DEBIT );
        }

        attach( key avatarId ){ CheckBaseAssumptions(); }
        on_rez( integer rezParam ) { CheckBaseAssumptions(); }

        run_time_permissions( integer permissionMask ) {
            CheckBaseAssumptions(); // This will reset the script if permission hasn't been given
            state config_check;
        }

        touch_end( integer detected ) {
            while( 0 <= ( detected -= 1 ) ) {
                if( Owner == llDetectedKey( detected ) ) {
                    CheckBaseAssumptions();
                }
            }
        }
    }