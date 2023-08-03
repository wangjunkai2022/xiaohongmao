.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/d;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/repository/d;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/d;->a:Lcom/qennnsad/aknkaksd/data/repository/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/repository/e;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
