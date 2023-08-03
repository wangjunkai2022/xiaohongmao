.class final Lcom/bumptech/glide/load/engine/executor/a$c;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:I = 0x9


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/executor/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/executor/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bumptech/glide/load/engine/executor/a$c$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/executor/a$c$a;-><init>(Lcom/bumptech/glide/load/engine/executor/a$c;Ljava/lang/Runnable;)V

    return-object v0
.end method
