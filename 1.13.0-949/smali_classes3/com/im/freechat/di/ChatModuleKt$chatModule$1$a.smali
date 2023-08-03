.class final Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ChatModuleKt$chatModule$1;->a(Lx8/a;)V
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
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatModule.kt\ncom/im/freechat/di/ChatModuleKt$chatModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,117:1\n127#2,5:118\n127#2,5:123\n127#2,5:128\n127#2,5:133\n127#2,5:138\n127#2,5:143\n127#2,5:148\n127#2,5:153\n127#2,5:158\n127#2,5:163\n127#2,5:168\n127#2,5:173\n127#2,5:178\n127#2,5:183\n127#2,5:188\n127#2,5:193\n127#2,5:198\n127#2,5:203\n127#2,5:208\n127#2,5:213\n127#2,5:218\n127#2,5:223\n127#2,5:228\n127#2,5:233\n127#2,5:238\n127#2,5:243\n127#2,5:248\n127#2,5:253\n127#2,5:258\n127#2,5:263\n127#2,5:268\n127#2,5:273\n127#2,5:278\n127#2,5:283\n*S KotlinDebug\n*F\n+ 1 ChatModule.kt\ncom/im/freechat/di/ChatModuleKt$chatModule$1$1\n*L\n33#1:118,5\n34#1:123,5\n35#1:128,5\n36#1:133,5\n37#1:138,5\n38#1:143,5\n39#1:148,5\n40#1:153,5\n41#1:158,5\n42#1:163,5\n43#1:168,5\n44#1:173,5\n45#1:178,5\n46#1:183,5\n47#1:188,5\n48#1:193,5\n49#1:198,5\n50#1:203,5\n51#1:208,5\n52#1:213,5\n53#1:218,5\n54#1:223,5\n55#1:228,5\n56#1:233,5\n57#1:238,5\n58#1:243,5\n59#1:248,5\n60#1:253,5\n61#1:258,5\n62#1:263,5\n63#1:268,5\n64#1:273,5\n65#1:278,5\n66#1:283,5\n*E\n"
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
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
        "a",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;

    invoke-direct {v0}, Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;-><init>()V

    sput-object v0, Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;->a:Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;
    .locals 38
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

    move-object/from16 v0, p1

    const-string v1, "$this$viewModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-object v2, v1

    .line 2
    const-class v3, Lcom/im/freechat/domain/usecase/messages/k;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/im/freechat/domain/usecase/messages/k;

    .line 3
    const-class v4, Lcom/im/freechat/domain/usecase/chat/r;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/im/freechat/domain/usecase/chat/r;

    .line 4
    const-class v5, Lcom/im/freechat/domain/usecase/auth/e;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v0, v5, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/im/freechat/domain/usecase/auth/e;

    .line 5
    const-class v6, Lcom/im/freechat/domain/usecase/chat/e;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v0, v6, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/im/freechat/domain/usecase/chat/e;

    .line 6
    const-class v7, Lcom/im/freechat/domain/usecase/messages/j;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v0, v7, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/im/freechat/domain/usecase/messages/j;

    .line 7
    const-class v8, Lcom/im/freechat/domain/usecase/messages/b;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v0, v8, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/im/freechat/domain/usecase/messages/b;

    .line 8
    const-class v9, Lcom/im/freechat/domain/usecase/messages/n;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v0, v9, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/im/freechat/domain/usecase/messages/n;

    .line 9
    const-class v10, Lcom/im/freechat/media/audio/c;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v0, v10, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/im/freechat/media/audio/c;

    .line 10
    const-class v11, Lcom/im/freechat/domain/usecase/chat/a;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v0, v11, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/im/freechat/domain/usecase/chat/a;

    .line 11
    const-class v12, Lp4/e;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v0, v12, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp4/e;

    .line 12
    const-class v13, Lcom/im/freechat/domain/usecase/members/h;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-virtual {v0, v13, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/im/freechat/domain/usecase/members/h;

    .line 13
    const-class v14, Lcom/im/freechat/domain/usecase/contact/b;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-virtual {v0, v14, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/im/freechat/domain/usecase/contact/b;

    .line 14
    const-class v16, Lcom/im/freechat/domain/usecase/contact/f;

    move-object/from16 p2, v1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v15, v15}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/domain/usecase/contact/f;

    move-object/from16 v37, v2

    move-object v2, v15

    move-object v15, v1

    .line 15
    const-class v1, Lcom/im/freechat/domain/usecase/contact/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/im/freechat/domain/usecase/contact/a;

    .line 16
    const-class v1, Lcom/im/freechat/domain/usecase/contact/j;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/im/freechat/domain/usecase/contact/j;

    .line 17
    const-class v1, Lcom/im/freechat/domain/h;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/im/freechat/domain/h;

    .line 18
    const-class v1, Lcom/im/freechat/domain/usecase/messages/i;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/im/freechat/domain/usecase/messages/i;

    .line 19
    const-class v1, Lcom/im/freechat/domain/usecase/chat/q;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/im/freechat/domain/usecase/chat/q;

    .line 20
    const-class v1, Lcom/im/freechat/domain/usecase/chat/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/im/freechat/domain/usecase/chat/f;

    .line 21
    const-class v1, Lcom/im/freechat/domain/usecase/messages/c;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/im/freechat/domain/usecase/messages/c;

    .line 22
    const-class v1, Lcom/im/freechat/domain/usecase/messages/o;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/im/freechat/domain/usecase/messages/o;

    .line 23
    const-class v1, Lcom/im/freechat/domain/usecase/chat/j;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/im/freechat/domain/usecase/chat/j;

    .line 24
    const-class v1, Lcom/im/freechat/domain/usecase/messages/p;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/im/freechat/domain/usecase/messages/p;

    .line 25
    const-class v1, Lcom/im/freechat/domain/usecase/currentuser/h;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/im/freechat/domain/usecase/currentuser/h;

    .line 26
    const-class v1, Lcom/im/freechat/domain/usecase/currentuser/b;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/im/freechat/domain/usecase/currentuser/b;

    .line 27
    const-class v1, Lcom/im/freechat/utils/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/im/freechat/utils/f;

    .line 28
    const-class v1, Lcom/im/freechat/domain/usecase/messages/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/im/freechat/domain/usecase/messages/a;

    .line 29
    const-class v1, Lcom/im/freechat/domain/usecase/messages/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/im/freechat/domain/usecase/messages/f;

    .line 30
    const-class v1, Lcom/im/freechat/domain/usecase/messages/e;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/im/freechat/domain/usecase/messages/e;

    .line 31
    const-class v1, Lcom/im/freechat/domain/usecase/messages/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/im/freechat/domain/usecase/messages/d;

    .line 32
    const-class v1, Lcom/im/freechat/domain/usecase/chat/s;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/im/freechat/domain/usecase/chat/s;

    .line 33
    const-class v1, Lcom/im/freechat/domain/usecase/messages/g;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/im/freechat/domain/usecase/messages/g;

    .line 34
    const-class v1, Lcom/im/freechat/domain/n;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/im/freechat/domain/n;

    .line 35
    const-class v1, Landroid/content/res/Resources;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/content/res/Resources;

    move-object/from16 v2, v37

    .line 36
    invoke-direct/range {v2 .. v36}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;-><init>(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ChatModuleKt$chatModule$1$a;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    move-result-object p1

    return-object p1
.end method
