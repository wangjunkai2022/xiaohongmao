.class public interface abstract Lcom/google/common/hash/m;
.super Ljava/lang/Object;
.source "HashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation build Lh3/a;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
.end method

.method public abstract b(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
.end method

.method public abstract c()I
.end method

.method public abstract d(I)Lcom/google/common/hash/n;
.end method

.method public abstract e([B)Lcom/google/common/hash/l;
.end method

.method public abstract h()Lcom/google/common/hash/n;
.end method

.method public abstract i(I)Lcom/google/common/hash/l;
.end method

.method public abstract j(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/l;"
        }
    .end annotation
.end method

.method public abstract k(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/l;
.end method

.method public abstract l(J)Lcom/google/common/hash/l;
.end method

.method public abstract m([BII)Lcom/google/common/hash/l;
.end method
