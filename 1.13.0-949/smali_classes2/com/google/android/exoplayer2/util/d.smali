.class public interface abstract Lcom/google/android/exoplayer2/util/d;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/util/r0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/r0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public abstract d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/q;
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e()V
.end method
