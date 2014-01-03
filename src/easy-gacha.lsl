////////////////////////////////////////////////////////////////////////////////
//
// LICENSE
//
// This is free and unencumbered software released into the public domain.
//
// Anyone is free to copy, modify, publish, use, compile, sell, or distribute
// this software, either in source code form or as a compiled binary, for any
// purpose, commercial or non-commercial, and by any means.
//
// In jurisdictions that recognize copyright laws, the author or authors of
// this software dedicate any and all copyright interest in the software to the
// public domain. We make this dedication for the benefit of the public at
// large and to the detriment of our heirs and successors. We intend this
// dedication to be an overt act of relinquishment in perpetuity of all present
// and future rights to this software under copyright law.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
// AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
// ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
// For more information, please refer to <http://unlicense.org/>
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Application
////////////////////////////////////////////////////////////////////////////////

// This is the version I'm working on now
#define VERSION 5.0

// Specific to scriptor
#define DEFAULT_CONFIG_URL_BASE "http://lslguru.github.io/easy-gacha/v5/index.html"
#define SOURCE_CODE_MESSAGE "This is free open source software. The source can be found at: https:\/\/github.com/lslguru/easy-gacha"
#define HTTP_OPTIONS [ HTTP_METHOD , "POST" , HTTP_MIMETYPE , "text/json;charset=utf-8" , HTTP_BODY_MAXLENGTH , 16384 , HTTP_VERIFY_CERT , FALSE , HTTP_VERBOSE_THROTTLE , FALSE ]
#define REPORT_TO ""
#define PERMANENT_KEY ""

// System constraints
#define MAX_FOLDER_NAME_LENGTH 63

// Tweaks
#define ASSET_SERVER_TIMEOUT 5.0
#define INVENTORY_SETTLE_TIME 5.0

// Config notecard
#define CONFIG_NOTECARD "Easy Gacha Config"

#start globalvariables

    list Items; // Inventory names, strings <= 63 chars in length
    list Rarity; // float
    list Limit; // integer, -1 == infinite
    list Payouts; // strided: [ avatar key , lindens ]
    integer MaxPerPurchase = 50;
    integer PayPrice; // Price || -1
    list PayPriceButtons; // [ Price || -1 , ... ]
    integer UseFolderForSingleItem = TRUE;
    integer SetRootPrimClickAction = FALSE;
    integer AllowShowMask = 7; // 1 == show configured inventory list, 2 = show rarity settings, 4 = show stats
    integer AllowShowRarity = TRUE; // If false, AllowShowStats forced to false
    integer AllowShowStats = TRUE; // If false, just show source-code URL
    key RuntimeId; // Changed each time set to ready-mode
    integer GroupAdmin = FALSE; // If group may administer
    integer GroupPlay = FALSE; // If play is restricted to group members
    string NotifyEmail; // Who to email after each play
    key NotifyIm; // Who to IM after each play
    integer Whisper = TRUE; // Whether or not to allow whisper
    integer Hovertext = TRUE; // Whether or not to allow hovertext output

#end globalvariables

#start globalfunctions

#end globalfunctions

#start states

    default {
        state_entry() { }
        changed( integer changeMask ) { }
            // if( CHANGED_INVENTORY & changeMask ) {
                // llSetTimerEvent( 0.0 );
                // llSetTimerEvent( INVENTORY_SETTLE_TIME );
        timer() { }
    }

    state ready {
        state_entry() { }
        changed( integer changeMask ) { }
        timer() { }
    }

#end states
