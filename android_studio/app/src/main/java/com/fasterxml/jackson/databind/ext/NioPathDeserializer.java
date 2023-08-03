package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.spi.FileSystemProvider;
import java.util.Iterator;
import java.util.ServiceLoader;

/* loaded from: classes.dex */
public class NioPathDeserializer extends StdScalarDeserializer<Path> {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15106g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f15107h;

    static {
        File[] listRoots = File.listRoots();
        int length = listRoots.length;
        boolean z9 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            String path = listRoots[i4].getPath();
            if (path.length() >= 2 && Character.isLetter(path.charAt(0)) && path.charAt(1) == ':') {
                z9 = true;
                break;
            }
            i4++;
        }
        f15107h = z9;
    }

    public NioPathDeserializer() {
        super(Path.class);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Path deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.k1(JsonToken.VALUE_STRING)) {
            return (Path) deserializationContext.handleUnexpectedToken(Path.class, jsonParser);
        }
        String S0 = jsonParser.S0();
        if (S0.indexOf(58) < 0) {
            return Paths.get(S0, new String[0]);
        }
        if (f15107h && S0.length() >= 2 && Character.isLetter(S0.charAt(0)) && S0.charAt(1) == ':') {
            return Paths.get(S0, new String[0]);
        }
        try {
            URI uri = new URI(S0);
            try {
                return Paths.get(uri);
            } catch (FileSystemNotFoundException e4) {
                try {
                    String scheme = uri.getScheme();
                    Iterator it = ServiceLoader.load(FileSystemProvider.class).iterator();
                    while (it.hasNext()) {
                        FileSystemProvider fileSystemProvider = (FileSystemProvider) it.next();
                        if (fileSystemProvider.getScheme().equalsIgnoreCase(scheme)) {
                            return fileSystemProvider.getPath(uri);
                        }
                    }
                    return (Path) deserializationContext.handleInstantiationProblem(handledType(), S0, e4);
                } catch (Throwable th) {
                    th.addSuppressed(e4);
                    return (Path) deserializationContext.handleInstantiationProblem(handledType(), S0, th);
                }
            } catch (Throwable th2) {
                return (Path) deserializationContext.handleInstantiationProblem(handledType(), S0, th2);
            }
        } catch (URISyntaxException e10) {
            return (Path) deserializationContext.handleInstantiationProblem(handledType(), S0, e10);
        }
    }
}
