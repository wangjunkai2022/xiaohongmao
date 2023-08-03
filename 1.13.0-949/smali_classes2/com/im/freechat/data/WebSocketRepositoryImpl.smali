.class public final Lcom/im/freechat/data/WebSocketRepositoryImpl;
.super Ljava/lang/Object;
.source "WebSocketRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/u;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketRepositoryImpl.kt\ncom/im/freechat/data/WebSocketRepositoryImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,241:1\n35#2:242\n20#2:243\n22#2:247\n20#2:248\n22#2:252\n20#2:253\n22#2:257\n50#3:244\n55#3:246\n50#3:249\n55#3:251\n50#3:254\n55#3:256\n106#4:245\n106#4:250\n106#4:255\n*S KotlinDebug\n*F\n+ 1 WebSocketRepositoryImpl.kt\ncom/im/freechat/data/WebSocketRepositoryImpl\n*L\n101#1:242\n101#1:243\n101#1:247\n102#1:248\n102#1:252\n106#1:253\n106#1:257\n101#1:244\n101#1:246\n102#1:249\n102#1:251\n106#1:254\n106#1:256\n101#1:245\n102#1:250\n106#1:255\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001T\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u001e\u001a\u00020\u001a\u0012\u0006\u0010_\u001a\u00020^\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010\'\u001a\u00020%\u0012\u0006\u0010*\u001a\u00020(\u0012\u0006\u0010-\u001a\u00020+\u00a2\u0006\u0004\u0008`\u0010aJ$\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0016R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010#R\u0014\u0010\'\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010A\u001a\u00020>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010\r\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001a\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u000e0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001a\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00050L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0014\u0010W\u001a\u00020T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010Z\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0014\u0010]\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\\\u00a8\u0006b"
    }
    d2 = {
        "Lcom/im/freechat/data/WebSocketRepositoryImpl;",
        "Lcom/im/freechat/domain/u;",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "messageFlow",
        "",
        "connectionFlow",
        "",
        "B",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "selfUser",
        "",
        "deviceToken",
        "timeoutEnabled",
        "Lcom/im/freechat/shared/entities/SocketEvent;",
        "f",
        "",
        "chatId",
        "a",
        "e",
        "Lcom/im/freechat/shared/entities/TypingEvent;",
        "b",
        "(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;",
        "d",
        "listenConnectionState",
        "c",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "y",
        "()Landroid/content/Context;",
        "context",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "messageMapper",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "chatMapper",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "chatRequestMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "contactMapper",
        "Lcom/im/freechat/domain/q;",
        "Lcom/im/freechat/domain/q;",
        "serverDateRepository",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "g",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "chatDao",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "h",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "messageDao",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "i",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "attachmentDao",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "j",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "contactDao",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "k",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "friendStatusDao",
        "l",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "m",
        "Ljava/lang/String;",
        "n",
        "Z",
        "Lkotlinx/coroutines/flow/s;",
        "o",
        "Lkotlinx/coroutines/flow/s;",
        "eventChannel",
        "Lkotlinx/coroutines/flow/t;",
        "p",
        "Lkotlinx/coroutines/flow/t;",
        "connectionState",
        "Lcom/im/freechat/data/sources/websocket/WsBinder;",
        "q",
        "Lcom/im/freechat/data/sources/websocket/WsBinder;",
        "binder",
        "com/im/freechat/data/WebSocketRepositoryImpl$c",
        "r",
        "Lcom/im/freechat/data/WebSocketRepositoryImpl$c;",
        "serviceConnection",
        "A",
        "()I",
        "userId",
        "z",
        "()Ljava/lang/String;",
        "imToken",
        "Lcom/im/freechat/data/sources/database/MainDatabase;",
        "database",
        "<init>",
        "(Landroid/content/Context;Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/domain/q;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/q;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Lcom/im/freechat/shared/entities/auth/UserInfo;

.field private m:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private n:Z

.field private final o:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private q:Lcom/im/freechat/data/sources/websocket/WsBinder;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final r:Lcom/im/freechat/data/WebSocketRepositoryImpl$c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/domain/q;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/MainDatabase;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/q;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "database"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageMapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRequestMapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactMapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverDateRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 4
    iput-object p4, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    .line 5
    iput-object p5, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    .line 6
    iput-object p6, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    .line 7
    iput-object p7, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->f:Lcom/im/freechat/domain/q;

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/MainDatabase;->chatDao()Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/MainDatabase;->messageDao()Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 10
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/MainDatabase;->attachmentDao()Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 11
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/MainDatabase;->userDao()Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->j:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    .line 12
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/MainDatabase;->friendStatusDao()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->m:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 14
    invoke-static {p1, p1, p2, p3, p2}, Lkotlinx/coroutines/flow/z;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->o:Lkotlinx/coroutines/flow/s;

    .line 15
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/j0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->p:Lkotlinx/coroutines/flow/t;

    .line 16
    new-instance p1, Lcom/im/freechat/data/WebSocketRepositoryImpl$c;

    invoke-direct {p1, p0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$c;-><init>(Lcom/im/freechat/data/WebSocketRepositoryImpl;)V

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->r:Lcom/im/freechat/data/WebSocketRepositoryImpl$c;

    return-void
.end method

.method private final A()I
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->l:Lcom/im/freechat/shared/entities/auth/UserInfo;

    if-nez v0, :cond_0

    const-string v0, "selfUser"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v0

    return v0
.end method

.method private final B(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i<",
            "+",
            "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
            ">;",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v1

    new-instance v4, Lcom/im/freechat/data/WebSocketRepositoryImpl$a;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$a;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/WebSocketRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v1

    new-instance v4, Lcom/im/freechat/data/WebSocketRepositoryImpl$b;

    invoke-direct {v4, p2, p0, v0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$b;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/WebSocketRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public static final synthetic g(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    return-object p0
.end method

.method public static final synthetic h(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    return-object p0
.end method

.method public static final synthetic i(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    return-object p0
.end method

.method public static final synthetic j(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    return-object p0
.end method

.method public static final synthetic k(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lkotlinx/coroutines/flow/t;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->p:Lkotlinx/coroutines/flow/t;

    return-object p0
.end method

.method public static final synthetic l(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->j:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    return-object p0
.end method

.method public static final synthetic m(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    return-object p0
.end method

.method public static final synthetic n(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic o(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->o:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic p(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Lcom/im/freechat/domain/q;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->f:Lcom/im/freechat/domain/q;

    return-object p0
.end method

.method public static final synthetic u(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->n:Z

    return p0
.end method

.method public static final synthetic v(Lcom/im/freechat/data/WebSocketRepositoryImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->A()I

    move-result p0

    return p0
.end method

.method public static final synthetic w(Lcom/im/freechat/data/WebSocketRepositoryImpl;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->B(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;)V

    return-void
.end method

.method public static final synthetic x(Lcom/im/freechat/data/WebSocketRepositoryImpl;Lcom/im/freechat/data/sources/websocket/WsBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    return-void
.end method

.method private final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->l:Lcom/im/freechat/shared/entities/auth/UserInfo;

    if-nez v0, :cond_0

    const-string v0, "selfUser"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getImToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/im/freechat/data/openapigen/models/SendStartTyping;

    .line 3
    sget-object v2, Lcom/im/freechat/data/openapigen/models/SendStartTyping$Type;->sendStartTyping:Lcom/im/freechat/data/openapigen/models/SendStartTyping$Type;

    .line 4
    invoke-direct {v1, v2, p1}, Lcom/im/freechat/data/openapigen/models/SendStartTyping;-><init>(Lcom/im/freechat/data/openapigen/models/SendStartTyping$Type;I)V

    .line 5
    invoke-interface {v0, v1}, Lcom/im/freechat/data/sources/websocket/WsBinder;->sendWebSocketMessage(Lcom/im/freechat/data/openapigen/models/SocketMessage;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/TypingEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->o:Lkotlinx/coroutines/flow/s;

    .line 2
    new-instance v1, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1;

    invoke-direct {v1, v0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    .line 3
    new-instance v0, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenTyping$$inlined$filter$1;

    invoke-direct {v0, v1, p1, p0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenTyping$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/i;Ljava/lang/Integer;Lcom/im/freechat/data/WebSocketRepositoryImpl;)V

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->r:Lcom/im/freechat/data/WebSocketRepositoryImpl$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    sget-object v1, Lcom/im/freechat/data/sources/websocket/WsService;->Companion:Lcom/im/freechat/data/sources/websocket/WsService$Companion;

    invoke-virtual {v1, v0}, Lcom/im/freechat/data/sources/websocket/WsService$Companion;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public d()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->o:Lkotlinx/coroutines/flow/s;

    .line 2
    new-instance v1, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/im/freechat/data/WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    return-object v1
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/im/freechat/data/openapigen/models/SendEndTyping;

    .line 3
    sget-object v2, Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;->sendEndTyping:Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;

    .line 4
    invoke-direct {v1, v2, p1}, Lcom/im/freechat/data/openapigen/models/SendEndTyping;-><init>(Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;I)V

    .line 5
    invoke-interface {v0, v1}, Lcom/im/freechat/data/sources/websocket/WsBinder;->sendWebSocketMessage(Lcom/im/freechat/data/openapigen/models/SocketMessage;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/im/freechat/shared/entities/auth/UserInfo;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/auth/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "selfUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->l:Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 2
    iput-boolean p3, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->n:Z

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->z()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/im/freechat/data/sources/websocket/WsBinder;->onTokenUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q:Lcom/im/freechat/data/sources/websocket/WsBinder;

    if-nez p1, :cond_1

    .line 5
    iput-object p2, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->m:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/im/freechat/data/sources/websocket/WsService;->Companion:Lcom/im/freechat/data/sources/websocket/WsService$Companion;

    iget-object p2, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService$Companion;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    iget-object p2, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->r:Lcom/im/freechat/data/WebSocketRepositoryImpl$c;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->o:Lkotlinx/coroutines/flow/s;

    return-object p1
.end method

.method public listenConnectionState()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->p:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method

.method public final y()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl;->a:Landroid/content/Context;

    return-object v0
.end method
