.class public interface abstract Lcom/google/common/hash/n;
.super Ljava/lang/Object;
.source "Hasher.java"

# interfaces
.implements Lcom/google/common/hash/a0;


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation build Lh3/a;
.end annotation


# virtual methods
.method public abstract a([B)Lcom/google/common/hash/n;
.end method

.method public abstract b(C)Lcom/google/common/hash/n;
.end method

.method public abstract c(B)Lcom/google/common/hash/n;
.end method

.method public abstract d(Ljava/lang/CharSequence;)Lcom/google/common/hash/n;
.end method

.method public abstract e([BII)Lcom/google/common/hash/n;
.end method

.method public abstract f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;
.end method

.method public abstract g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/n;
.end method

.method public abstract h(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/n;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i()Lcom/google/common/hash/l;
.end method

.method public abstract putBoolean(Z)Lcom/google/common/hash/n;
.end method

.method public abstract putDouble(D)Lcom/google/common/hash/n;
.end method

.method public abstract putFloat(F)Lcom/google/common/hash/n;
.end method

.method public abstract putInt(I)Lcom/google/common/hash/n;
.end method

.method public abstract putLong(J)Lcom/google/common/hash/n;
.end method

.method public abstract putShort(S)Lcom/google/common/hash/n;
.end method
