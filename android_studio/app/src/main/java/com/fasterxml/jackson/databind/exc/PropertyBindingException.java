package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class PropertyBindingException extends MismatchedInputException {

    /* renamed from: n  reason: collision with root package name */
    private static final int f15086n = 1000;

    /* renamed from: j  reason: collision with root package name */
    protected final Class<?> f15087j;

    /* renamed from: k  reason: collision with root package name */
    protected final String f15088k;

    /* renamed from: l  reason: collision with root package name */
    protected final Collection<Object> f15089l;

    /* renamed from: m  reason: collision with root package name */
    protected transient String f15090m;

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyBindingException(JsonParser jsonParser, String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        super(jsonParser, str, jsonLocation);
        this.f15087j = cls;
        this.f15088k = str2;
        this.f15089l = collection;
    }

    public Collection<Object> getKnownPropertyIds() {
        Collection<Object> collection = this.f15089l;
        if (collection == null) {
            return null;
        }
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public String getMessageSuffix() {
        String str = this.f15090m;
        if (str != null || this.f15089l == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(100);
        int size = this.f15089l.size();
        if (size == 1) {
            sb.append(" (one known property: \"");
            sb.append(String.valueOf(this.f15089l.iterator().next()));
            sb.append('\"');
        } else {
            sb.append(" (");
            sb.append(size);
            sb.append(" known properties: ");
            Iterator<Object> it = this.f15089l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                sb.append('\"');
                sb.append(String.valueOf(it.next()));
                sb.append('\"');
                if (sb.length() > 1000) {
                    sb.append(" [truncated]");
                    break;
                } else if (it.hasNext()) {
                    sb.append(", ");
                }
            }
        }
        sb.append("])");
        String sb2 = sb.toString();
        this.f15090m = sb2;
        return sb2;
    }

    public String getPropertyName() {
        return this.f15088k;
    }

    public Class<?> getReferringClass() {
        return this.f15087j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public PropertyBindingException(String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        this(null, str, jsonLocation, cls, str2, collection);
    }
}
