.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/o;
.super Ljava/lang/Object;
.source "MediaChunkIterator.java"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/source/chunk/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/o$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/o;->a:Lcom/google/android/exoplayer2/source/chunk/o;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Z
.end method

.method public abstract c()J
.end method

.method public abstract d()Lcom/google/android/exoplayer2/upstream/o;
.end method

.method public abstract next()Z
.end method

.method public abstract reset()V
.end method
