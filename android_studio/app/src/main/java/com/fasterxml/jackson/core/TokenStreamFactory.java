package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import io.sentry.instrumentation.file.h;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.net.URL;

/* loaded from: classes.dex */
public abstract class TokenStreamFactory implements n, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f13753a = 2;

    /* JADX INFO: Access modifiers changed from: protected */
    public OutputStream a(DataOutput dataOutput) {
        return new com.fasterxml.jackson.core.io.c(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InputStream b(URL url) throws IOException {
        String host;
        if ("file".equals(url.getProtocol()) && (((host = url.getHost()) == null || host.length() == 0) && url.getPath().indexOf(37) < 0)) {
            String path = url.getPath();
            return h.b.d(new FileInputStream(path), path);
        }
        return url.openStream();
    }

    public abstract boolean canHandleBinaryNatively();

    public abstract boolean canParseAsync();

    public abstract boolean canUseSchema(c cVar);

    public abstract JsonGenerator createGenerator(DataOutput dataOutput) throws IOException;

    public abstract JsonGenerator createGenerator(DataOutput dataOutput, JsonEncoding jsonEncoding) throws IOException;

    public abstract JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException;

    public abstract JsonGenerator createGenerator(OutputStream outputStream) throws IOException;

    public abstract JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException;

    public abstract JsonGenerator createGenerator(Writer writer) throws IOException;

    public abstract JsonParser createNonBlockingByteArrayParser() throws IOException;

    public abstract JsonParser createParser(DataInput dataInput) throws IOException;

    public abstract JsonParser createParser(File file) throws IOException;

    public abstract JsonParser createParser(InputStream inputStream) throws IOException;

    public abstract JsonParser createParser(Reader reader) throws IOException;

    public abstract JsonParser createParser(String str) throws IOException;

    public abstract JsonParser createParser(URL url) throws IOException;

    public abstract JsonParser createParser(byte[] bArr) throws IOException;

    public abstract JsonParser createParser(byte[] bArr, int i4, int i10) throws IOException;

    public abstract JsonParser createParser(char[] cArr) throws IOException;

    public abstract JsonParser createParser(char[] cArr, int i4, int i10) throws IOException;

    public abstract int getFormatGeneratorFeatures();

    public abstract String getFormatName();

    public abstract int getFormatParserFeatures();

    public abstract Class<? extends b> getFormatReadFeatureType();

    public abstract Class<? extends b> getFormatWriteFeatureType();

    public abstract int getGeneratorFeatures();

    public abstract int getParserFeatures();

    public abstract boolean isEnabled(JsonGenerator.Feature feature);

    public abstract boolean isEnabled(JsonParser.Feature feature);

    public abstract boolean requiresPropertyOrdering();
}
