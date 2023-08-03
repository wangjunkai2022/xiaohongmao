package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;

/* loaded from: classes.dex */
public abstract class OutputDecorator implements Serializable {
    public abstract OutputStream decorate(d dVar, OutputStream outputStream) throws IOException;

    public abstract Writer decorate(d dVar, Writer writer) throws IOException;
}
