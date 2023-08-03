.class public Liamutkarshtiwari/github/io/ananas/editimage/widget/a;
.super Ljava/lang/Object;
.source "EditCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;
    }
.end annotation


# static fields
.field public static final e:I = 0xa


# instance fields
.field private final a:I

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 6
    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    if-gtz p1, :cond_0

    const/16 p1, 0xa

    .line 5
    :cond_0
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->a:I

    return-void
.end method

.method public static e(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private declared-synchronized q()V
    .locals 2

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->a:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 3
    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->e(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 3

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 2
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    return v0
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->a:I

    return v0
.end method

.method public declared-synchronized i()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected m()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;

    .line 2
    invoke-interface {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;->a(Liamutkarshtiwari/github/io/ananas/editimage/widget/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized n(Landroid/graphics/Bitmap;)Z
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4
    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->e(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-ne p1, v2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->q()V

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->q()V

    .line 12
    :goto_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->c:I

    .line 13
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 15
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized o()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2
    invoke-static {v1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->e(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p(Liamutkarshtiwari/github/io/ananas/editimage/widget/a$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/widget/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
