.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->b:Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->b:Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/b;->c:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->b(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method
