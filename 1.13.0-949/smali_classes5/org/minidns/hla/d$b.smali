.class public Lorg/minidns/hla/d$b;
.super Ljava/lang/Object;
.source "SrvResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/hla/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lorg/minidns/dnsname/DnsName;

.field public final b:Lorg/minidns/record/u;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/j;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lorg/minidns/hla/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lorg/minidns/hla/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I


# direct methods
.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/u;Ljava/util/List;Lorg/minidns/hla/c;Lorg/minidns/hla/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/u;",
            "Ljava/util/List<",
            "Lorg/minidns/record/j;",
            ">;",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/a;",
            ">;",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/minidns/hla/d$b;->a:Lorg/minidns/dnsname/DnsName;

    .line 4
    iput-object p2, p0, Lorg/minidns/hla/d$b;->b:Lorg/minidns/record/u;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/hla/d$b;->c:Ljava/util/List;

    .line 6
    iget p1, p2, Lorg/minidns/record/u;->e:I

    iput p1, p0, Lorg/minidns/hla/d$b;->f:I

    .line 7
    iput-object p4, p0, Lorg/minidns/hla/d$b;->d:Lorg/minidns/hla/c;

    .line 8
    iput-object p5, p0, Lorg/minidns/hla/d$b;->e:Lorg/minidns/hla/c;

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/u;Ljava/util/List;Lorg/minidns/hla/c;Lorg/minidns/hla/c;Lorg/minidns/hla/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/minidns/hla/d$b;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/u;Ljava/util/List;Lorg/minidns/hla/c;Lorg/minidns/hla/c;)V

    return-void
.end method
