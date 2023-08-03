.class public final Lcom/google/android/exoplayer2/source/d1$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/m$a;

.field private b:Lcom/google/android/exoplayer2/upstream/f0;

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/m$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->b:Lcom/google/android/exoplayer2/upstream/f0;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/d1;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v10, Lcom/google/android/exoplayer2/source/d1;

    .line 2
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d1$b;->e:Ljava/lang/String;

    :cond_0
    move-object v1, v0

    new-instance v2, Lcom/google/android/exoplayer2/b1$h;

    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-direct {v2, p1, v0, v3, p2}, Lcom/google/android/exoplayer2/b1$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d1$b;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d1$b;->b:Lcom/google/android/exoplayer2/upstream/f0;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/d1$b;->c:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/d1$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/d1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$h;Lcom/google/android/exoplayer2/upstream/m$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d1$a;)V

    return-object v10
.end method

.method public b(Lcom/google/android/exoplayer2/b1$h;J)Lcom/google/android/exoplayer2/source/d1;
    .locals 11

    new-instance v10, Lcom/google/android/exoplayer2/source/d1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d1$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d1$b;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d1$b;->b:Lcom/google/android/exoplayer2/upstream/f0;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/d1$b;->c:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/d1$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/d1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$h;Lcom/google/android/exoplayer2/upstream/m$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d1$a;)V

    return-object v10
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/d1$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/f0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->b:Lcom/google/android/exoplayer2/upstream/f0;

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/d1$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/d1$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/google/android/exoplayer2/source/d1$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/d1$b;->c:Z

    return-object p0
.end method
