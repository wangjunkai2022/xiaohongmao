.class public final Lcom/im/freechat/utils/l;
.super Ljava/lang/Object;
.source "NotificationManagerImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/n;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationManagerImpl.kt\ncom/im/freechat/utils/NotificationManagerImpl\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n33#2,3:210\n33#2,3:213\n12537#3,2:216\n1851#4,2:218\n1851#4,2:220\n1851#4,2:222\n*S KotlinDebug\n*F\n+ 1 NotificationManagerImpl.kt\ncom/im/freechat/utils/NotificationManagerImpl\n*L\n53#1:210,3\n58#1:213,3\n74#1:216,2\n83#1:218,2\n185#1:220,2\n203#1:222,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u000c\u0010\u000b\u001a\u00020\n*\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0017\u001a\u00020\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001bR\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010!\u001a\u0004\u0008\"\u0010#R\"\u0010*\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001b\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R/\u00102\u001a\u0004\u0018\u00010\r2\u0008\u0010+\u001a\u0004\u0018\u00010\r8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R+\u00108\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00083\u0010-\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u0006="
    }
    d2 = {
        "Lcom/im/freechat/utils/l;",
        "Lcom/im/freechat/domain/n;",
        "",
        "t",
        "Lcom/im/freechat/shared/entities/SocketEvent;",
        "event",
        "o",
        "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
        "message",
        "n",
        "Landroid/app/Notification;",
        "s",
        "i",
        "",
        "chatId",
        "b",
        "d",
        "",
        "muted",
        "a",
        "",
        "",
        "messageIds",
        "c",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Z",
        "isMuted",
        "",
        "Ljava/util/List;",
        "mutedChats",
        "Landroidx/core/app/NotificationManagerCompat;",
        "Lkotlin/Lazy;",
        "l",
        "()Landroidx/core/app/NotificationManagerCompat;",
        "notificationManager",
        "e",
        "k",
        "()Z",
        "q",
        "(Z)V",
        "maxPriority",
        "<set-?>",
        "f",
        "Lkotlin/properties/ReadWriteProperty;",
        "m",
        "()Ljava/lang/Integer;",
        "r",
        "(Ljava/lang/Integer;)V",
        "openedChat",
        "g",
        "j",
        "()I",
        "p",
        "(I)V",
        "foregroundChecker",
        "Lcom/im/freechat/domain/j;",
        "inAppMessageManager",
        "<init>",
        "(Landroid/content/Context;Lcom/im/freechat/domain/j;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field static final synthetic h:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Z

.field private final f:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/im/freechat/utils/l;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 1
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "openedChat"

    const-string v4, "getOpenedChat()Ljava/lang/Integer;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "foregroundChecker"

    const-string v4, "getForegroundChecker()I"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/im/freechat/utils/l;->h:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/im/freechat/domain/j;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/utils/l;->c:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/im/freechat/utils/l$c;

    invoke-direct {p1, p0}, Lcom/im/freechat/utils/l$c;-><init>(Lcom/im/freechat/utils/l;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/utils/l;->d:Lkotlin/Lazy;

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/utils/l;->i()V

    .line 6
    sget-object p1, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    new-instance v3, Lcom/im/freechat/utils/l$a;

    const/4 v6, 0x0

    invoke-direct {v3, p2, p0, v6}, Lcom/im/freechat/utils/l$a;-><init>(Lcom/im/freechat/domain/j;Lcom/im/freechat/utils/l;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 7
    new-instance v3, Lcom/im/freechat/utils/l$b;

    invoke-direct {v3, p2, p0, v6}, Lcom/im/freechat/utils/l$b;-><init>(Lcom/im/freechat/domain/j;Lcom/im/freechat/utils/l;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/im/freechat/utils/l;->e:Z

    .line 9
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 10
    new-instance p1, Lcom/im/freechat/utils/l$d;

    invoke-direct {p1, v6, p0}, Lcom/im/freechat/utils/l$d;-><init>(Ljava/lang/Object;Lcom/im/freechat/utils/l;)V

    .line 11
    iput-object p1, p0, Lcom/im/freechat/utils/l;->f:Lkotlin/properties/ReadWriteProperty;

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/im/freechat/utils/l$e;

    invoke-direct {p2, p1, p0}, Lcom/im/freechat/utils/l$e;-><init>(Ljava/lang/Object;Lcom/im/freechat/utils/l;)V

    .line 14
    iput-object p2, p0, Lcom/im/freechat/utils/l;->g:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic e(Lcom/im/freechat/utils/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic f(Lcom/im/freechat/utils/l;Lcom/im/freechat/shared/entities/message/MessageWithChat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/utils/l;->n(Lcom/im/freechat/shared/entities/message/MessageWithChat;)V

    return-void
.end method

.method public static final synthetic g(Lcom/im/freechat/utils/l;Lcom/im/freechat/shared/entities/SocketEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/utils/l;->o(Lcom/im/freechat/shared/entities/SocketEvent;)V

    return-void
.end method

.method public static final synthetic h(Lcom/im/freechat/utils/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/utils/l;->t()V

    return-void
.end method

.method private final i()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    sget v1, Lb4/b$s;->g8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.string.new_message)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "chats_high"

    invoke-direct {v2, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 6
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    const-string v5, "chats"

    invoke-direct {v3, v5, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 7
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private final l()Landroidx/core/app/NotificationManagerCompat;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/utils/l;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method private final n(Lcom/im/freechat/shared/entities/message/MessageWithChat;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/l;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/im/freechat/utils/l;->b:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/utils/l;->s(Lcom/im/freechat/shared/entities/message/MessageWithChat;)Landroid/app/Notification;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/im/freechat/utils/l;->e:Z

    if-eqz v3, :cond_1

    const-string v3, "chats_high"

    goto :goto_0

    :cond_1
    const-string v3, "chats"

    :goto_0
    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "New messages"

    .line 5
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 7
    iget-boolean v3, p0, Lcom/im/freechat/utils/l;->e:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 8
    sget v3, Lb4/b$h;->E4:I

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 11
    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "Builder(context, if (max\u2026\n                .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/im/freechat/utils/l;->l()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v3

    invoke-static {v3, v4}, La5/a;->a(J)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final o(Lcom/im/freechat/shared/entities/SocketEvent;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/im/freechat/shared/entities/MessageEditedEvent;

    if-eqz v0, :cond_4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 3
    iget-object v0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    const-string v2, "notificationManager.activeNotifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 6
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    move-object v7, p1

    check-cast v7, Lcom/im/freechat/shared/entities/MessageEditedEvent;

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/MessageEditedEvent;->getMessage()Lcom/im/freechat/shared/entities/message/MessageWithChat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v7

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v7

    invoke-static {v7, v8}, La5/a;->a(J)I

    move-result v7

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    return-void

    .line 7
    :cond_3
    check-cast p1, Lcom/im/freechat/shared/entities/MessageEditedEvent;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/MessageEditedEvent;->getMessage()Lcom/im/freechat/shared/entities/message/MessageWithChat;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/im/freechat/utils/l;->s(Lcom/im/freechat/shared/entities/message/MessageWithChat;)Landroid/app/Notification;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/MessageEditedEvent;->getMessage()Lcom/im/freechat/shared/entities/message/MessageWithChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->hashCode()I

    move-result p1

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 10
    :cond_4
    instance-of v0, p1, Lcom/im/freechat/shared/entities/MessagesDeletedEvent;

    if-eqz v0, :cond_5

    .line 11
    check-cast p1, Lcom/im/freechat/shared/entities/MessagesDeletedEvent;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/MessagesDeletedEvent;->getMessageIds()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 13
    invoke-direct {p0}, Lcom/im/freechat/utils/l;->l()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_3

    .line 14
    :cond_5
    instance-of v0, p1, Lcom/im/freechat/shared/entities/MessagesReadEvent;

    if-eqz v0, :cond_6

    .line 15
    check-cast p1, Lcom/im/freechat/shared/entities/MessagesReadEvent;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/MessagesReadEvent;->getMessageIds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/utils/l;->c(Ljava/util/List;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private final s(Lcom/im/freechat/shared/entities/message/MessageWithChat;)Landroid/app/Notification;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatAvatar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/c;->E(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->v()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/im/freechat/extend/m;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->s1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->A1()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-eq v2, v3, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/im/freechat/extend/p;->d(Lcom/im/freechat/shared/entities/message/Message;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v2

    if-ne v2, v3, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/im/freechat/extend/p;->d(Lcom/im/freechat/shared/entities/message/Message;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    const-string v5, "chats"

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    sget v4, Lb4/b$h;->E4:I

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getChatTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    invoke-virtual {v2}, Lcom/im/freechat/sdk/SDKManager;->k()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/MessageWithChat;->getMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "Builder(context, CHANNEL\u2026g())\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final t()V
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/utils/l;->j()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/utils/l;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/im/freechat/utils/l;->e:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/utils/l;->b:Z

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/l;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/utils/l;->r(Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/l;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5

    .line 6
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    const-string v2, "notificationManager.activeNotifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 7
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v6, ":"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/l;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/im/freechat/utils/l;->r(Ljava/lang/Integer;)V

    return-void
.end method

.method public final j()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/utils/l;->g:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/utils/l;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/utils/l;->e:Z

    return v0
.end method

.method public final m()Ljava/lang/Integer;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/l;->f:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/utils/l;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final p(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/utils/l;->g:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/utils/l;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/utils/l;->e:Z

    return-void
.end method

.method public final r(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/im/freechat/utils/l;->f:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/utils/l;->h:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
