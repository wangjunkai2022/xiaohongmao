.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;->a:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/PageBean;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;->c(Lcom/qennnsad/aknkaksd/data/bean/PageBean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
