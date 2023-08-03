.class public Lorg/minidns/edns/Edns$b;
.super Ljava/lang/Object;
.source "Edns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/edns/Edns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/edns/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/edns/Edns$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/edns/Edns$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/minidns/edns/Edns$b;)I
    .locals 0

    iget p0, p0, Lorg/minidns/edns/Edns$b;->a:I

    return p0
.end method

.method static synthetic b(Lorg/minidns/edns/Edns$b;)I
    .locals 0

    iget p0, p0, Lorg/minidns/edns/Edns$b;->b:I

    return p0
.end method

.method static synthetic c(Lorg/minidns/edns/Edns$b;)I
    .locals 0

    iget p0, p0, Lorg/minidns/edns/Edns$b;->c:I

    return p0
.end method

.method static synthetic d(Lorg/minidns/edns/Edns$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/edns/Edns$b;->d:Z

    return p0
.end method

.method static synthetic e(Lorg/minidns/edns/Edns$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/edns/Edns$b;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public f(Lorg/minidns/edns/a;)Lorg/minidns/edns/Edns$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/edns/Edns$b;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/edns/Edns$b;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/Edns$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g()Lorg/minidns/edns/Edns;
    .locals 1

    new-instance v0, Lorg/minidns/edns/Edns;

    invoke-direct {v0, p0}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/edns/Edns$b;)V

    return-object v0
.end method

.method public h()Lorg/minidns/edns/Edns$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/minidns/edns/Edns$b;->d:Z

    return-object p0
.end method

.method public i(Z)Lorg/minidns/edns/Edns$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/edns/Edns$b;->d:Z

    return-object p0
.end method

.method public j(I)Lorg/minidns/edns/Edns$b;
    .locals 3

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lorg/minidns/edns/Edns$b;->a:I

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDP payload size must not be greater than 65536, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
