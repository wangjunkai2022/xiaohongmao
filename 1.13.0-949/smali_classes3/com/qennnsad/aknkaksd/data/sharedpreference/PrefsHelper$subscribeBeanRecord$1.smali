.class public final Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;
.super Ljava/lang/Object;
.source "PrefsHelper.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->subscribeBeanRecord(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrefsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrefsHelper.kt\ncom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1\n+ 2 PrefsHelper.kt\ncom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper\n*L\n1#1,517:1\n181#2,9:518\n*S KotlinDebug\n*F\n+ 1 PrefsHelper.kt\ncom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1\n*L\n60#1:518,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "Lkotlin/Pair;",
        "",
        "",
        "onChanged"
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
.field final synthetic $decrypt:Z

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $observer:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroidx/lifecycle/Observer;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$key:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$decrypt:Z

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$observer:Landroidx/lifecycle/Observer;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->this$0:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->onChanged(Lkotlin/Pair;)V

    return-void
.end method

.method public final onChanged(Lkotlin/Pair;)V
    .locals 8
    .param p1    # Lkotlin/Pair;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$key:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$decrypt:Z

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    const-string v4, "T"

    const/4 v5, 0x4

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$observer:Landroidx/lifecycle/Observer;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/DES;->decryptDES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode--eeeeeeeeee: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 8
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    .line 10
    :goto_2
    invoke-interface {v2, v1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->$observer:Landroidx/lifecycle/Observer;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;->this$0:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method
