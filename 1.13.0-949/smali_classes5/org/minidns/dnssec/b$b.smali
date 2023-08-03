.class Lorg/minidns/dnssec/b$b;
.super Ljava/lang/Object;
.source "DnssecClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lorg/minidns/dnssec/b;


# direct methods
.method private constructor <init>(Lorg/minidns/dnssec/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/minidns/dnssec/b$b;->d:Lorg/minidns/dnssec/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/minidns/dnssec/b$b;->a:Z

    .line 3
    iput-boolean p1, p0, Lorg/minidns/dnssec/b$b;->b:Z

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/minidns/dnssec/b$b;->c:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnssec/b;Lorg/minidns/dnssec/b$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/minidns/dnssec/b$b;-><init>(Lorg/minidns/dnssec/b;)V

    return-void
.end method
