.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/r;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/f;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/f;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/f;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e(Lretrofit2/Response;)Z

    move-result p1

    return p1
.end method
