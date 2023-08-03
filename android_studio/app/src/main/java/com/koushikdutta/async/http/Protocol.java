package com.koushikdutta.async.http;

import java.util.Hashtable;
import java.util.Locale;

/* loaded from: classes3.dex */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1") { // from class: com.koushikdutta.async.http.Protocol.1
        @Override // com.koushikdutta.async.http.Protocol
        public boolean needsSpdyConnection() {
            return true;
        }
    },
    HTTP_2("h2-13") { // from class: com.koushikdutta.async.http.Protocol.2
        @Override // com.koushikdutta.async.http.Protocol
        public boolean needsSpdyConnection() {
            return true;
        }
    };
    

    /* renamed from: b  reason: collision with root package name */
    private static final Hashtable<String, Protocol> f44673b;

    /* renamed from: a  reason: collision with root package name */
    private final String f44675a;

    static {
        Protocol protocol = HTTP_1_0;
        Protocol protocol2 = HTTP_1_1;
        Protocol protocol3 = SPDY_3;
        Protocol protocol4 = HTTP_2;
        Hashtable<String, Protocol> hashtable = new Hashtable<>();
        f44673b = hashtable;
        hashtable.put(protocol.toString(), protocol);
        hashtable.put(protocol2.toString(), protocol2);
        hashtable.put(protocol3.toString(), protocol3);
        hashtable.put(protocol4.toString(), protocol4);
    }

    public static Protocol get(String str) {
        if (str == null) {
            return null;
        }
        return f44673b.get(str.toLowerCase(Locale.US));
    }

    public boolean needsSpdyConnection() {
        return false;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f44675a;
    }

    Protocol(String str) {
        this.f44675a = str;
    }
}
