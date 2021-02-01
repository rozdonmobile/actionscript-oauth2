/**
 * Created by max.rozdobudko@gmail.com on 18.11.2019.
 */
package com.adobe.protocols.oauth2.event {
import flash.events.Event;

public class GetAuthorizationCodeEvent extends Event implements IOAuth2Event {

    public static const TYPE:String = "getAuthorizationCode";

    // MARK: Constructor

    public function GetAuthorizationCodeEvent(bubbles:Boolean = false, cancelable:Boolean = false) {
        super(TYPE, bubbles, cancelable);
    }

    // authorization code

    private var _code: String;
    public function get code(): String {
        return _code;
    }
    public function set code(value: String): void {
        _code = value;
    }

    // errorCode

    private var _errorCode: String;
    public function get errorCode(): String {
        return _errorCode;
    }
    public function set errorCode(value: String): void {
        _errorCode = value;
    }

    // errorMessage

    private var _errorMessage: String;
    public function get errorMessage(): String {
        return _errorMessage;
    }
    public function set errorMessage(value: String): void {
        _errorMessage = value;
    }
}
}
