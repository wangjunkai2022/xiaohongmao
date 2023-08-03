.class public Lorg/minidns/f;
.super Ljava/lang/Object;
.source "RrSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/f$b;
    }
.end annotation


# instance fields
.field public final a:Lorg/minidns/dnsname/DnsName;

.field public final b:Lorg/minidns/record/Record$TYPE;

.field public final c:Lorg/minidns/record/Record$CLASS;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/minidns/f;->a:Lorg/minidns/dnsname/DnsName;

    .line 4
    iput-object p2, p0, Lorg/minidns/f;->b:Lorg/minidns/record/Record$TYPE;

    .line 5
    iput-object p3, p0, Lorg/minidns/f;->c:Lorg/minidns/record/Record$CLASS;

    .line 6
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/f;->d:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;Lorg/minidns/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/f;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;)V

    return-void
.end method

.method public static a()Lorg/minidns/f$b;
    .locals 2

    new-instance v0, Lorg/minidns/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/minidns/f$b;-><init>(Lorg/minidns/f$a;)V

    return-object v0
.end method
