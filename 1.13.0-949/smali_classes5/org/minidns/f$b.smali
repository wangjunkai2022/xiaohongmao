.class public Lorg/minidns/f$b;
.super Ljava/lang/Object;
.source "RrSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field private a:Lorg/minidns/dnsname/DnsName;

.field private b:Lorg/minidns/record/Record$TYPE;

.field private c:Lorg/minidns/record/Record$CLASS;

.field d:Ljava/util/Set;
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/f$b;->d:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/minidns/record/Record;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/f$b;->d(Lorg/minidns/record/Record;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/minidns/f$b;->b(Lorg/minidns/record/Record;)Lorg/minidns/f$b;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lorg/minidns/record/Record;)Lorg/minidns/f$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)",
            "Lorg/minidns/f$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/f$b;->a:Lorg/minidns/dnsname/DnsName;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    iput-object v0, p0, Lorg/minidns/f$b;->a:Lorg/minidns/dnsname/DnsName;

    .line 3
    iget-object v0, p1, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    iput-object v0, p0, Lorg/minidns/f$b;->b:Lorg/minidns/record/Record$TYPE;

    .line 4
    iget-object v0, p1, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    iput-object v0, p0, Lorg/minidns/f$b;->c:Lorg/minidns/record/Record$CLASS;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/minidns/f$b;->d(Lorg/minidns/record/Record;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/minidns/f$b;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to RRSet "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/minidns/f$b;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/f$b;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/minidns/f$b;->c:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lorg/minidns/f;
    .locals 7

    .line 1
    iget-object v1, p0, Lorg/minidns/f$b;->a:Lorg/minidns/dnsname/DnsName;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lorg/minidns/f;

    iget-object v2, p0, Lorg/minidns/f$b;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p0, Lorg/minidns/f$b;->c:Lorg/minidns/record/Record$CLASS;

    iget-object v4, p0, Lorg/minidns/f$b;->d:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/minidns/f;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;Lorg/minidns/f$a;)V

    return-object v6

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public d(Lorg/minidns/record/Record;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/f$b;->a:Lorg/minidns/dnsname/DnsName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p1, Lorg/minidns/record/Record;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/minidns/f$b;->b:Lorg/minidns/record/Record$TYPE;

    iget-object v2, p1, Lorg/minidns/record/Record;->b:Lorg/minidns/record/Record$TYPE;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/minidns/f$b;->c:Lorg/minidns/record/Record$CLASS;

    iget-object p1, p1, Lorg/minidns/record/Record;->c:Lorg/minidns/record/Record$CLASS;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
