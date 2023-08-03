.class public final Lcom/google/android/exoplayer2/upstream/f0$a;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/o;

.field public final b:Lcom/google/android/exoplayer2/source/s;

.field public final c:Ljava/io/IOException;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/s;Ljava/io/IOException;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->a:Lcom/google/android/exoplayer2/source/o;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->c:Ljava/io/IOException;

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->d:I

    return-void
.end method
