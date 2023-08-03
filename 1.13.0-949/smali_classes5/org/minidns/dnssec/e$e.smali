.class public Lorg/minidns/dnssec/e$e;
.super Lorg/minidns/dnssec/e;
.source "UnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field private final a:Lorg/minidns/dnsmessage/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            "Ljava/util/List<",
            "Lorg/minidns/record/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/minidns/dnssec/e;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/dnssec/e$e;->a:Lorg/minidns/dnsmessage/a;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/dnssec/e$e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No currently active signatures were attached to answer on question for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/e$e;->a:Lorg/minidns/dnsmessage/a;

    iget-object v1, v1, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnssec/e$e;->a:Lorg/minidns/dnsmessage/a;

    iget-object v1, v1, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/record/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/dnssec/e$e;->b:Ljava/util/List;

    return-object v0
.end method
