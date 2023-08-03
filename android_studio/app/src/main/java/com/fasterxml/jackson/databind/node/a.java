package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.ObjectReader;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.json.JsonMapper;
import java.io.IOException;

/* compiled from: InternalNodeMapper.java */
/* loaded from: classes.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonMapper f15571a;

    /* renamed from: b  reason: collision with root package name */
    private static final ObjectWriter f15572b;

    /* renamed from: c  reason: collision with root package name */
    private static final ObjectWriter f15573c;

    /* renamed from: d  reason: collision with root package name */
    private static final ObjectReader f15574d;

    static {
        JsonMapper jsonMapper = new JsonMapper();
        f15571a = jsonMapper;
        f15572b = jsonMapper.writer();
        f15573c = jsonMapper.writer().withDefaultPrettyPrinter();
        f15574d = jsonMapper.readerFor(com.fasterxml.jackson.databind.e.class);
    }

    a() {
    }

    public static com.fasterxml.jackson.databind.e a(byte[] bArr) throws IOException {
        return (com.fasterxml.jackson.databind.e) f15574d.readValue(bArr);
    }

    public static String b(com.fasterxml.jackson.databind.e eVar) {
        try {
            return f15573c.writeValueAsString(eVar);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static String c(com.fasterxml.jackson.databind.e eVar) {
        try {
            return f15572b.writeValueAsString(eVar);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static byte[] d(Object obj) throws IOException {
        return f15571a.writeValueAsBytes(obj);
    }
}
