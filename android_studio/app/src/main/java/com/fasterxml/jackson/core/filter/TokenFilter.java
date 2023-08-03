package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public class TokenFilter {

    /* renamed from: a  reason: collision with root package name */
    public static final TokenFilter f13839a = new TokenFilter();

    /* loaded from: classes.dex */
    public enum Inclusion {
        ONLY_INCLUDE_ALL,
        INCLUDE_ALL_AND_PATH,
        INCLUDE_NON_NULL
    }

    protected boolean a() {
        return true;
    }

    public void b() {
    }

    public void c() {
    }

    public TokenFilter d() {
        return this;
    }

    public TokenFilter e() {
        return this;
    }

    public boolean f() {
        return a();
    }

    public boolean g(boolean z9) {
        return a();
    }

    public TokenFilter h(int i4) {
        return this;
    }

    public boolean i(Object obj) {
        return a();
    }

    public boolean j() {
        return a();
    }

    public boolean k(double d4) {
        return a();
    }

    public boolean l(float f10) {
        return a();
    }

    public boolean m(int i4) {
        return a();
    }

    public boolean n(long j4) {
        return a();
    }

    public boolean o(BigDecimal bigDecimal) {
        return a();
    }

    public boolean p(BigInteger bigInteger) {
        return a();
    }

    public TokenFilter q(String str) {
        return this;
    }

    public boolean r() {
        return a();
    }

    public TokenFilter s(int i4) {
        return this;
    }

    public boolean t(Reader reader, int i4) {
        return a();
    }

    public String toString() {
        return this == f13839a ? "TokenFilter.INCLUDE_ALL" : super.toString();
    }

    public boolean u(String str) {
        return a();
    }

    public boolean v(JsonParser jsonParser) throws IOException {
        return a();
    }
}
