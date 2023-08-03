.class public final enum Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
.super Ljava/lang/Enum;
.source "CustomToast.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/toast/CustomToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;",
        "",
        "",
        "a",
        "I",
        "getIcon",
        "()I",
        "icon",
        "b",
        "getTextColor",
        "textColor",
        "<init>",
        "(Ljava/lang/String;III)V",
        "Normal",
        "Failure",
        "Warn",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum Failure:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

.field public static final enum Normal:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

.field public static final enum Warn:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

.field private static final synthetic c:[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const-string v1, "Normal"

    const/4 v2, 0x0

    const v3, 0x7f060033

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Normal:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const-string v1, "Failure"

    const/4 v2, 0x1

    const v3, 0x7f080498

    const v4, 0x7f0602d6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Failure:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const-string v1, "Warn"

    const/4 v2, 0x2

    const v3, 0x7f080499

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Warn:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    invoke-static {}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->a()[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->c:[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->a:I

    iput p4, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->b:I

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    sget-object v1, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Normal:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Failure:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Warn:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->c:[Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->a:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->b:I

    return v0
.end method
