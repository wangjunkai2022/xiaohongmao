.class public final Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComponentCallbackExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,59:1\n57#2:60\n131#3:61\n*S KotlinDebug\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n*L\n44#1:60\n44#1:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentCallbacks;

.field final synthetic b:Lz8/a;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->a:Landroid/content/ComponentCallbacks;

    iput-object p2, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->b:Lz8/a;

    iput-object p3, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->a:Landroid/content/ComponentCallbacks;

    iget-object v1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->b:Lz8/a;

    iget-object v2, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    invoke-static {v0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    .line 3
    const-class v3, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
