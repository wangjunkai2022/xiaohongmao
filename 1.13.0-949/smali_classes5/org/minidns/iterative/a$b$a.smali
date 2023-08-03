.class Lorg/minidns/iterative/a$b$a;
.super Ljava/lang/Object;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Random;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/iterative/a$b$a;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/iterative/a$b$a;->c:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lorg/minidns/iterative/a$b$a;->a:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Random;Lorg/minidns/iterative/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/minidns/iterative/a$b$a;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method static synthetic a(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/iterative/a$b$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/minidns/iterative/a$b$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/iterative/a$b$a;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c()Lorg/minidns/iterative/a$b;
    .locals 5

    new-instance v0, Lorg/minidns/iterative/a$b;

    iget-object v1, p0, Lorg/minidns/iterative/a$b$a;->b:Ljava/util/List;

    iget-object v2, p0, Lorg/minidns/iterative/a$b$a;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/minidns/iterative/a$b$a;->a:Ljava/util/Random;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/iterative/a$b;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;Lorg/minidns/iterative/a$a;)V

    return-object v0
.end method
