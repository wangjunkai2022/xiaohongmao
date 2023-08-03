package com.fasterxml.jackson.databind.util;

import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class NameTransformer {
    public static final NameTransformer NOP = new NopTransformer();

    /* loaded from: classes2.dex */
    public static class Chained extends NameTransformer implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f15963c = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final NameTransformer f15964a;

        /* renamed from: b  reason: collision with root package name */
        protected final NameTransformer f15965b;

        public Chained(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
            this.f15964a = nameTransformer;
            this.f15965b = nameTransformer2;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            String reverse = this.f15964a.reverse(str);
            return reverse != null ? this.f15965b.reverse(reverse) : reverse;
        }

        public String toString() {
            return "[ChainedTransformer(" + this.f15964a + ", " + this.f15965b + ")]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return this.f15964a.transform(this.f15965b.transform(str));
        }
    }

    /* loaded from: classes2.dex */
    protected static final class NopTransformer extends NameTransformer implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f15966a = 1;

        protected NopTransformer() {
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            return str;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return str;
        }
    }

    /* loaded from: classes2.dex */
    static class a extends NameTransformer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15967a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15968b;

        a(String str, String str2) {
            this.f15967a = str;
            this.f15968b = str2;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            if (str.startsWith(this.f15967a)) {
                String substring = str.substring(this.f15967a.length());
                if (substring.endsWith(this.f15968b)) {
                    return substring.substring(0, substring.length() - this.f15968b.length());
                }
                return null;
            }
            return null;
        }

        public String toString() {
            return "[PreAndSuffixTransformer('" + this.f15967a + "','" + this.f15968b + "')]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return this.f15967a + str + this.f15968b;
        }
    }

    /* loaded from: classes2.dex */
    static class b extends NameTransformer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15969a;

        b(String str) {
            this.f15969a = str;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            if (str.startsWith(this.f15969a)) {
                return str.substring(this.f15969a.length());
            }
            return null;
        }

        public String toString() {
            return "[PrefixTransformer('" + this.f15969a + "')]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return this.f15969a + str;
        }
    }

    /* loaded from: classes2.dex */
    static class c extends NameTransformer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15970a;

        c(String str) {
            this.f15970a = str;
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String reverse(String str) {
            if (str.endsWith(this.f15970a)) {
                return str.substring(0, str.length() - this.f15970a.length());
            }
            return null;
        }

        public String toString() {
            return "[SuffixTransformer('" + this.f15970a + "')]";
        }

        @Override // com.fasterxml.jackson.databind.util.NameTransformer
        public String transform(String str) {
            return str + this.f15970a;
        }
    }

    protected NameTransformer() {
    }

    public static NameTransformer chainedTransformer(NameTransformer nameTransformer, NameTransformer nameTransformer2) {
        return new Chained(nameTransformer, nameTransformer2);
    }

    public static NameTransformer simpleTransformer(String str, String str2) {
        boolean z9 = true;
        boolean z10 = (str == null || str.isEmpty()) ? false : true;
        z9 = (str2 == null || str2.isEmpty()) ? false : false;
        if (z10) {
            if (z9) {
                return new a(str, str2);
            }
            return new b(str);
        } else if (z9) {
            return new c(str2);
        } else {
            return NOP;
        }
    }

    public abstract String reverse(String str);

    public abstract String transform(String str);
}
