package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes2.dex */
public final class Streams {
    private Streams() {
        throw new UnsupportedOperationException();
    }

    public static JsonElement parse(JsonReader jsonReader) throws JsonParseException {
        boolean z9;
        try {
            try {
                jsonReader.peek();
                z9 = false;
                try {
                    return TypeAdapters.JSON_ELEMENT.read(jsonReader);
                } catch (EOFException e4) {
                    e = e4;
                    if (z9) {
                        return JsonNull.INSTANCE;
                    }
                    throw new JsonSyntaxException(e);
                }
            } catch (MalformedJsonException e10) {
                throw new JsonSyntaxException(e10);
            } catch (IOException e11) {
                throw new JsonIOException(e11);
            } catch (NumberFormatException e12) {
                throw new JsonSyntaxException(e12);
            }
        } catch (EOFException e13) {
            e = e13;
            z9 = true;
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(appendable);
    }

    /* loaded from: classes2.dex */
    private static final class AppendableWriter extends Writer {
        private final Appendable appendable;
        private final CurrentWrite currentWrite = new CurrentWrite();

        /* loaded from: classes2.dex */
        static class CurrentWrite implements CharSequence {
            char[] chars;

            CurrentWrite() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i4) {
                return this.chars[i4];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.chars.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i4, int i10) {
                return new String(this.chars, i4, i10 - i4);
            }
        }

        AppendableWriter(Appendable appendable) {
            this.appendable = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i4, int i10) throws IOException {
            CurrentWrite currentWrite = this.currentWrite;
            currentWrite.chars = cArr;
            this.appendable.append(currentWrite, i4, i10 + i4);
        }

        @Override // java.io.Writer
        public void write(int i4) throws IOException {
            this.appendable.append((char) i4);
        }
    }
}
