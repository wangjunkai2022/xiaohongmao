package com.fasterxml.jackson.core.io;

import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class InputDecorator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f13900a = 1;

    public DataInput decorate(d dVar, DataInput dataInput) throws IOException {
        throw new UnsupportedOperationException();
    }

    public abstract InputStream decorate(d dVar, InputStream inputStream) throws IOException;

    public abstract InputStream decorate(d dVar, byte[] bArr, int i4, int i10) throws IOException;

    public abstract Reader decorate(d dVar, Reader reader) throws IOException;
}
