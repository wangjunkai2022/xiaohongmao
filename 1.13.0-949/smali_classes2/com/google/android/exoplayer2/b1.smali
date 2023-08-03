.class public final Lcom/google/android/exoplayer2/b1;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b1$d;,
        Lcom/google/android/exoplayer2/b1$h;,
        Lcom/google/android/exoplayer2/b1$f;,
        Lcom/google/android/exoplayer2/b1$g;,
        Lcom/google/android/exoplayer2/b1$b;,
        Lcom/google/android/exoplayer2/b1$e;,
        Lcom/google/android/exoplayer2/b1$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = ""

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field public static final k:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/b1$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/exoplayer2/b1$f;

.field public final d:Lcom/google/android/exoplayer2/f1;

.field public final e:Lcom/google/android/exoplayer2/b1$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/a1;->a:Lcom/google/android/exoplayer2/a1;

    sput-object v0, Lcom/google/android/exoplayer2/b1;->k:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$d;Lcom/google/android/exoplayer2/b1$g;Lcom/google/android/exoplayer2/b1$f;Lcom/google/android/exoplayer2/f1;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/b1$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$d;Lcom/google/android/exoplayer2/b1$g;Lcom/google/android/exoplayer2/b1$f;Lcom/google/android/exoplayer2/f1;Lcom/google/android/exoplayer2/b1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/b1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$d;Lcom/google/android/exoplayer2/b1$g;Lcom/google/android/exoplayer2/b1$f;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b1;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/b1;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b1;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/b1$f;->f:Lcom/google/android/exoplayer2/b1$f;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/b1$f;->l:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/b1$f;

    :goto_0
    move-object v6, v1

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/exoplayer2/f1;->z:Lcom/google/android/exoplayer2/f1;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/f1;->S:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/f1;

    :goto_1
    move-object v7, v1

    const/4 v1, 0x3

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/b1$d;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, -0x8000000000000000L

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/google/android/exoplayer2/b1$d;-><init>(JJZZZLcom/google/android/exoplayer2/b1$a;)V

    goto :goto_2

    .line 10
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/b1$d;->k:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b1$d;

    :goto_2
    move-object v4, v0

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/b1;

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/b1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/b1$d;Lcom/google/android/exoplayer2/b1$g;Lcom/google/android/exoplayer2/b1$f;Lcom/google/android/exoplayer2/f1;)V

    return-object v0
.end method

.method public static d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b1$c;->G(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p0

    return-object p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/b1$c;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/b1$c;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/b1$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/b1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/b1;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    iget-object v3, p1, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/b1$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    iget-object v3, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    iget-object v3, p1, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1$g;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1$f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b1$d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b1;->c:Lcom/google/android/exoplayer2/b1$f;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b1$f;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b1;->d:Lcom/google/android/exoplayer2/f1;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f1;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/b1;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b1;->e:Lcom/google/android/exoplayer2/b1$d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b1$d;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
