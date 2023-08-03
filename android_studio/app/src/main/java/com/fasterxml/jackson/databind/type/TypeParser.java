package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.g;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/* loaded from: classes2.dex */
public class TypeParser implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final long f15929b = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final TypeFactory f15930a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends StringTokenizer {

        /* renamed from: a  reason: collision with root package name */
        protected final String f15931a;

        /* renamed from: b  reason: collision with root package name */
        protected int f15932b;

        /* renamed from: c  reason: collision with root package name */
        protected String f15933c;

        public a(String str) {
            super(str, "<,>", true);
            this.f15931a = str;
        }

        public String a() {
            return this.f15931a;
        }

        public String b() {
            return this.f15931a.substring(this.f15932b);
        }

        public void c(String str) {
            this.f15933c = str;
        }

        @Override // java.util.StringTokenizer
        public boolean hasMoreTokens() {
            return this.f15933c != null || super.hasMoreTokens();
        }

        @Override // java.util.StringTokenizer
        public String nextToken() {
            String str = this.f15933c;
            if (str != null) {
                this.f15933c = null;
                return str;
            }
            String nextToken = super.nextToken();
            this.f15932b += nextToken.length();
            return nextToken.trim();
        }
    }

    public TypeParser(TypeFactory typeFactory) {
        this.f15930a = typeFactory;
    }

    protected IllegalArgumentException a(a aVar, String str) {
        return new IllegalArgumentException(String.format("Failed to parse type '%s' (remaining: '%s'): %s", aVar.a(), aVar.b(), str));
    }

    protected Class<?> b(String str, a aVar) {
        try {
            return this.f15930a.findClass(str);
        } catch (Exception e4) {
            g.v0(e4);
            throw a(aVar, "Cannot locate class '" + str + "', problem: " + e4.getMessage());
        }
    }

    protected JavaType c(a aVar) throws IllegalArgumentException {
        if (aVar.hasMoreTokens()) {
            Class<?> b10 = b(aVar.nextToken(), aVar);
            if (aVar.hasMoreTokens()) {
                String nextToken = aVar.nextToken();
                if ("<".equals(nextToken)) {
                    return this.f15930a.k(null, b10, TypeBindings.create(b10, d(aVar)));
                }
                aVar.c(nextToken);
            }
            return this.f15930a.k(null, b10, TypeBindings.emptyBindings());
        }
        throw a(aVar, "Unexpected end-of-string");
    }

    protected List<JavaType> d(a aVar) throws IllegalArgumentException {
        ArrayList arrayList = new ArrayList();
        while (aVar.hasMoreTokens()) {
            arrayList.add(c(aVar));
            if (!aVar.hasMoreTokens()) {
                break;
            }
            String nextToken = aVar.nextToken();
            if (">".equals(nextToken)) {
                return arrayList;
            }
            if (!",".equals(nextToken)) {
                throw a(aVar, "Unexpected token '" + nextToken + "', expected ',' or '>')");
            }
        }
        throw a(aVar, "Unexpected end-of-string");
    }

    public JavaType parse(String str) throws IllegalArgumentException {
        a aVar = new a(str.trim());
        JavaType c10 = c(aVar);
        if (aVar.hasMoreTokens()) {
            throw a(aVar, "Unexpected tokens after complete type");
        }
        return c10;
    }

    public TypeParser withFactory(TypeFactory typeFactory) {
        return typeFactory == this.f15930a ? this : new TypeParser(typeFactory);
    }
}
