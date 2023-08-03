.class public interface abstract Lcom/google/android/exoplayer2/extractor/k;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/k$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = -0x1


# virtual methods
.method public abstract a(JJ)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Lcom/google/android/exoplayer2/extractor/m;)V
.end method

.method public abstract release()V
.end method
