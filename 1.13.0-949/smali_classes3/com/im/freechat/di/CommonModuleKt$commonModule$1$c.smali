.class final Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;
.super Lkotlin/jvm/internal/Lambda;
.source "CommonModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/CommonModuleKt$commonModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lcom/im/freechat/utils/u;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonModule.kt\ncom/im/freechat/di/CommonModuleKt$commonModule$1$18\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,99:1\n127#2,5:100\n*S KotlinDebug\n*F\n+ 1 CommonModule.kt\ncom/im/freechat/di/CommonModuleKt$commonModule$1$18\n*L\n85#1:100,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "Lcom/im/freechat/utils/u;",
        "a",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/utils/u;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;

    invoke-direct {v0}, Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;-><init>()V

    sput-object v0, Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;->a:Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/utils/u;
    .locals 2
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/im/freechat/utils/u;

    .line 2
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->M()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, v0}, Lcom/im/freechat/utils/u;-><init>(Landroid/content/Context;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/CommonModuleKt$commonModule$1$c;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/utils/u;

    move-result-object p1

    return-object p1
.end method
