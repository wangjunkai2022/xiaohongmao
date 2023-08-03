.class final Lcom/google/android/exoplayer2/offline/c$b;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/google/android/exoplayer2/offline/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/c$b;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public N()Lcom/google/android/exoplayer2/offline/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/c;->i(Landroid/database/Cursor;)Lcom/google/android/exoplayer2/offline/e;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public synthetic isAfterLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->a(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public synthetic isBeforeFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->b(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public synthetic isFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->c(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public synthetic isLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->d(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToFirst()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->e(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToLast()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->f(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->g(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/c$b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public synthetic moveToPrevious()Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/offline/f;->h(Lcom/google/android/exoplayer2/offline/g;)Z

    move-result v0

    return v0
.end method
