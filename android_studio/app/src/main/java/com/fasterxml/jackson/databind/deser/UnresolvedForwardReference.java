package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UnresolvedForwardReference extends JsonMappingException {

    /* renamed from: k  reason: collision with root package name */
    private static final long f14654k = 1;

    /* renamed from: i  reason: collision with root package name */
    private com.fasterxml.jackson.databind.deser.impl.j f14655i;

    /* renamed from: j  reason: collision with root package name */
    private List<n> f14656j;

    public UnresolvedForwardReference(JsonParser jsonParser, String str, JsonLocation jsonLocation, com.fasterxml.jackson.databind.deser.impl.j jVar) {
        super(jsonParser, str, jsonLocation);
        this.f14655i = jVar;
    }

    public void addUnresolvedId(Object obj, Class<?> cls, JsonLocation jsonLocation) {
        this.f14656j.add(new n(obj, cls, jsonLocation));
    }

    @Override // com.fasterxml.jackson.databind.JsonMappingException, com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (this.f14656j == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(message);
        Iterator<n> it = this.f14656j.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append('.');
        return sb.toString();
    }

    public com.fasterxml.jackson.databind.deser.impl.j getRoid() {
        return this.f14655i;
    }

    public Object getUnresolvedId() {
        return this.f14655i.c().key;
    }

    public List<n> getUnresolvedIds() {
        return this.f14656j;
    }

    public UnresolvedForwardReference withStackTrace() {
        super.fillInStackTrace();
        return this;
    }

    @Override // java.lang.Throwable
    public synchronized UnresolvedForwardReference fillInStackTrace() {
        return this;
    }

    public UnresolvedForwardReference(JsonParser jsonParser, String str) {
        super(jsonParser, str);
        this.f14656j = new ArrayList();
    }

    @Deprecated
    public UnresolvedForwardReference(String str, JsonLocation jsonLocation, com.fasterxml.jackson.databind.deser.impl.j jVar) {
        super(str, jsonLocation);
        this.f14655i = jVar;
    }

    @Deprecated
    public UnresolvedForwardReference(String str) {
        super(str);
        this.f14656j = new ArrayList();
    }
}
