.class final Lcom/google/android/exoplayer2/n1$b$a;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n1$b$a$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x64


# instance fields
.field private final a:Lcom/google/android/exoplayer2/n1$b$a$a;

.field private b:Lcom/google/android/exoplayer2/source/z;

.field private c:Lcom/google/android/exoplayer2/source/w;

.field final synthetic d:Lcom/google/android/exoplayer2/n1$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/n1$b$a$a;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/n1$b$a$a;-><init>(Lcom/google/android/exoplayer2/n1$b$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/n1$b$a;)Lcom/google/android/exoplayer2/source/w;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/n1$b$a;Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/source/w;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 p1, 0x3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->b:Lcom/google/android/exoplayer2/source/z;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/z;

    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/z;->g(Lcom/google/android/exoplayer2/source/w;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->b:Lcom/google/android/exoplayer2/source/z;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/z;

    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/z;->b(Lcom/google/android/exoplayer2/source/z$b;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/q;->i(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n1$b;->d(Lcom/google/android/exoplayer2/n1$b;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/w;->e(J)Z

    return v2

    .line 8
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->c:Lcom/google/android/exoplayer2/source/w;

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->b:Lcom/google/android/exoplayer2/source/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/z;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->n()V

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->s()V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/util/q;->b(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/n1$b;->c(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/common/util/concurrent/e1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/e1;->N(Ljava/lang/Throwable;)Z

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/q;->d(I)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    :goto_1
    return v2

    .line 14
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/b1;

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/n1$b;->a(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/source/j0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/j0;->c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->b:Lcom/google/android/exoplayer2/source/z;

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b$a;->a:Lcom/google/android/exoplayer2/n1$b$a$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/z;->h(Lcom/google/android/exoplayer2/source/z$b;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b$a;->d:Lcom/google/android/exoplayer2/n1$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n1$b;->b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/util/q;->l(I)Z

    return v2
.end method
