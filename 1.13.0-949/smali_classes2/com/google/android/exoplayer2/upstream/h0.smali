.class public final Lcom/google/android/exoplayer2/upstream/h0;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/o;

.field public final c:I

.field private final d:Lcom/google/android/exoplayer2/upstream/m0;

.field private final e:Lcom/google/android/exoplayer2/upstream/h0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/h0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/h0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/m;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/h0$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/o$b;->j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/o$b;->c(I)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/h0;-><init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/upstream/h0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/upstream/h0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/m;",
            "Lcom/google/android/exoplayer2/upstream/o;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/h0$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/m0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/m0;-><init>(Lcom/google/android/exoplayer2/upstream/m;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/h0;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 7
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/h0;->c:I

    .line 8
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/h0;->e:Lcom/google/android/exoplayer2/upstream/h0$a;

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/source/o;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/h0;->a:J

    return-void
.end method

.method public static g(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/h0$a;Landroid/net/Uri;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/m;",
            "Lcom/google/android/exoplayer2/upstream/h0$a<",
            "+TT;>;",
            "Landroid/net/Uri;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/upstream/h0;-><init>(Lcom/google/android/exoplayer2/upstream/m;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/h0$a;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h0;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h0;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/h0$a;Lcom/google/android/exoplayer2/upstream/o;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/m;",
            "Lcom/google/android/exoplayer2/upstream/h0$a<",
            "+TT;>;",
            "Lcom/google/android/exoplayer2/upstream/o;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplayer2/upstream/h0;-><init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/upstream/h0$a;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h0;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/h0;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->w()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->b:Lcom/google/android/exoplayer2/upstream/o;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/o;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/n;->d()V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/m0;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/h0;->e:Lcom/google/android/exoplayer2/upstream/h0$a;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/h0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/h0;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->q(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->q(Ljava/io/Closeable;)V

    .line 7
    throw v1
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/h0;->d:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->u()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
