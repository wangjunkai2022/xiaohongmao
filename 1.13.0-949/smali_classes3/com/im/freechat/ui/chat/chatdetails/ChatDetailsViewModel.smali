.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;
.super Lcom/im/freechat/base/a;
.source "ChatDetailsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;,
        Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 MediaMetadataCompatExtensions.kt\ncom/im/freechat/extend/MediaMetadataCompatExtensionsKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,843:1\n92#2:844\n92#2:845\n1549#3:846\n1620#3,3:847\n1603#3,9:858\n1851#3:867\n1852#3:869\n1612#3:870\n1851#3,2:871\n1208#3,2:874\n1238#3,4:876\n1549#3:880\n1620#3,3:881\n1722#3,2:884\n1743#3,3:886\n1724#3:889\n1722#3,2:890\n1743#3,3:892\n1724#3:895\n1743#3,3:896\n2620#3,3:899\n1851#3,2:902\n1770#3,4:915\n1770#3,4:919\n378#3,7:923\n1#4:850\n1#4:868\n511#5:851\n496#5,6:852\n511#5:904\n496#5,6:905\n48#6:873\n125#7:911\n152#7,3:912\n*S KotlinDebug\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel\n*L\n184#1:844\n188#1:845\n234#1:846\n234#1:847,3\n516#1:858,9\n516#1:867\n516#1:869\n516#1:870\n567#1:871,2\n707#1:874,2\n707#1:876,4\n710#1:880\n710#1:881,3\n761#1:884,2\n762#1:886,3\n761#1:889\n770#1:890,2\n771#1:892,3\n770#1:895\n779#1:896,3\n814#1:899,3\n142#1:902,2\n187#1:915,4\n290#1:919,4\n297#1:923,7\n516#1:868\n432#1:851\n432#1:852,6\n183#1:904\n183#1:905,6\n680#1:873\n183#1:911\n183#1:912,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00ec\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u00e3\u0002\u00e4\u0002B\u00d2\u0002\u0012\u0006\u0010m\u001a\u00020j\u0012\u0006\u0010q\u001a\u00020n\u0012\u0006\u0010u\u001a\u00020r\u0012\u0006\u0010y\u001a\u00020v\u0012\u0006\u0010}\u001a\u00020z\u0012\u0007\u0010\u0081\u0001\u001a\u00020~\u0012\u0008\u0010\u0085\u0001\u001a\u00030\u0082\u0001\u0012\u0008\u0010\u0089\u0001\u001a\u00030\u0086\u0001\u0012\u0008\u0010\u008d\u0001\u001a\u00030\u008a\u0001\u0012\u0008\u0010\u00e0\u0002\u001a\u00030\u00df\u0002\u0012\u0008\u0010\u0091\u0001\u001a\u00030\u008e\u0001\u0012\u0008\u0010\u0095\u0001\u001a\u00030\u0092\u0001\u0012\u0008\u0010\u0099\u0001\u001a\u00030\u0096\u0001\u0012\u0008\u0010\u009d\u0001\u001a\u00030\u009a\u0001\u0012\u0008\u0010\u00a1\u0001\u001a\u00030\u009e\u0001\u0012\u0008\u0010\u00a5\u0001\u001a\u00030\u00a2\u0001\u0012\u0008\u0010\u00a9\u0001\u001a\u00030\u00a6\u0001\u0012\u0008\u0010\u00ad\u0001\u001a\u00030\u00aa\u0001\u0012\u0008\u0010\u00b1\u0001\u001a\u00030\u00ae\u0001\u0012\u0008\u0010\u00b5\u0001\u001a\u00030\u00b2\u0001\u0012\u0008\u0010\u00b9\u0001\u001a\u00030\u00b6\u0001\u0012\u0008\u0010\u00bd\u0001\u001a\u00030\u00ba\u0001\u0012\u0008\u0010\u00c1\u0001\u001a\u00030\u00be\u0001\u0012\u0008\u0010\u00c5\u0001\u001a\u00030\u00c2\u0001\u0012\u0008\u0010\u00c9\u0001\u001a\u00030\u00c6\u0001\u0012\u0008\u0010\u00cd\u0001\u001a\u00030\u00ca\u0001\u0012\u0008\u0010\u00d1\u0001\u001a\u00030\u00ce\u0001\u0012\u0008\u0010\u00d5\u0001\u001a\u00030\u00d2\u0001\u0012\u0008\u0010\u00d9\u0001\u001a\u00030\u00d6\u0001\u0012\u0008\u0010\u00dd\u0001\u001a\u00030\u00da\u0001\u0012\u0008\u0010\u00e1\u0001\u001a\u00030\u00de\u0001\u0012\u0008\u0010\u00e5\u0001\u001a\u00030\u00e2\u0001\u0012\u0008\u0010\u00e9\u0001\u001a\u00030\u00e6\u0001\u0012\u0008\u0010\u00ed\u0001\u001a\u00030\u00ea\u0001\u00a2\u0006\u0006\u0008\u00e1\u0002\u0010\u00e2\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u000e\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f0\u0010*\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\tH\u0002J\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016J$\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00112\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u001c\u001a\u00020\tJ\u000e\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010 \u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010$\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"J\u000e\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003J\u0006\u0010\'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\tJ\u000e\u0010+\u001a\u00020\t2\u0006\u0010*\u001a\u00020)J\u0006\u0010,\u001a\u00020\tJ\u0014\u0010.\u001a\u00020\t2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000bJ\u0014\u0010/\u001a\u00020\t2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000bJ\u000e\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u000cJ\u0006\u00102\u001a\u00020\u0005J\u0014\u00104\u001a\u00020\u00052\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0014\u00107\u001a\u00020\t2\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u0002050\u000bJ\u000e\u0010:\u001a\u00020\t2\u0006\u00109\u001a\u000208J\"\u0010?\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u00032\u0008\u0008\u0002\u0010<\u001a\u00020\u00032\u0008\u0008\u0002\u0010>\u001a\u00020=J\u000e\u0010@\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u0003J\u000e\u0010C\u001a\u00020\u00052\u0006\u0010B\u001a\u00020AJ\u0006\u0010D\u001a\u00020\tJ\u0006\u0010E\u001a\u00020\tJ\u0006\u0010F\u001a\u00020\tJ\u0006\u0010G\u001a\u00020\tJ\u0008\u0010H\u001a\u00020\tH\u0014J\u000e\u0010K\u001a\u00020\t2\u0006\u0010J\u001a\u00020IJ\u000e\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u0003J\u0006\u0010N\u001a\u00020\tJ\u0016\u0010Q\u001a\u00020\t2\u0006\u0010O\u001a\u00020A2\u0006\u0010P\u001a\u00020=J\u000e\u0010T\u001a\u00020\t2\u0006\u0010S\u001a\u00020RJ\u0006\u0010U\u001a\u00020\tJ\u000e\u0010W\u001a\u00020\t2\u0006\u0010V\u001a\u00020\u0011J\u0006\u0010X\u001a\u00020\u0011J\u0006\u0010Y\u001a\u00020=J\u0006\u0010Z\u001a\u00020=J\u0006\u0010[\u001a\u00020=J\u0006\u0010\\\u001a\u00020=J\u0006\u0010]\u001a\u00020\tJ\u000e\u0010_\u001a\u00020\t2\u0006\u0010^\u001a\u00020=J\u000e\u0010a\u001a\u00020\t2\u0006\u0010`\u001a\u00020\u0011J\u000e\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\u000fJ\u0006\u0010d\u001a\u00020=J\u0012\u0010g\u001a\u0004\u0018\u00010f2\u0008\u0010e\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010i\u001a\u00020\u000f2\u0008\u0010h\u001a\u0004\u0018\u00010\u000fR\u0014\u0010m\u001a\u00020j8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0014\u0010q\u001a\u00020n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0014\u0010}\u001a\u00020z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009d\u0001\u001a\u00030\u009a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u0018\u0010\u00a1\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0018\u0010\u00a5\u0001\u001a\u00030\u00a2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0018\u0010\u00a9\u0001\u001a\u00030\u00a6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030\u00aa\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u0018\u0010\u00b1\u0001\u001a\u00030\u00ae\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0018\u0010\u00b5\u0001\u001a\u00030\u00b2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u0018\u0010\u00b9\u0001\u001a\u00030\u00b6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0018\u0010\u00bd\u0001\u001a\u00030\u00ba\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u0018\u0010\u00c1\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u0018\u0010\u00c5\u0001\u001a\u00030\u00c2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u0018\u0010\u00c9\u0001\u001a\u00030\u00c6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0018\u0010\u00cd\u0001\u001a\u00030\u00ca\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0018\u0010\u00d1\u0001\u001a\u00030\u00ce\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001R\u0018\u0010\u00d5\u0001\u001a\u00030\u00d2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R\u0018\u0010\u00d9\u0001\u001a\u00030\u00d6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001R\u0018\u0010\u00dd\u0001\u001a\u00030\u00da\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0001\u0010\u00dc\u0001R\u0018\u0010\u00e1\u0001\u001a\u00030\u00de\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R\u0018\u0010\u00e5\u0001\u001a\u00030\u00e2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001R\u0018\u0010\u00e9\u0001\u001a\u00030\u00e6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001R\u0018\u0010\u00ed\u0001\u001a\u00030\u00ea\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001R\u0018\u0010\u0019\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00e7\u0001R,\u0010\u00f5\u0001\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010=0=0\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f1\u0001\u0010\u00f2\u0001\u001a\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R/\u0010\u00f8\u0001\u001a\u0015\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020=0\u00100\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f6\u0001\u0010\u00f2\u0001\u001a\u0006\u0008\u00f7\u0001\u0010\u00f4\u0001R$\u0010\u00fc\u0001\u001a\n\u0012\u0005\u0012\u00030\u00f9\u00010\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00fa\u0001\u0010\u00f2\u0001\u001a\u0006\u0008\u00fb\u0001\u0010\u00f4\u0001R%\u0010\u00ff\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00fd\u00010\u000b0\u00ef\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00f2\u0001R#\u0010\u0082\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0080\u0002\u0010\u00f2\u0001\u001a\u0006\u0008\u0081\u0002\u0010\u00f4\u0001R,\u0010\u008a\u0002\u001a\u0005\u0018\u00010\u0083\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0084\u0002\u0010\u0085\u0002\u001a\u0006\u0008\u0086\u0002\u0010\u0087\u0002\"\u0006\u0008\u0088\u0002\u0010\u0089\u0002R)\u0010\u0090\u0002\u001a\u000f\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u008b\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008c\u0002\u0010\u008d\u0002\u001a\u0006\u0008\u008e\u0002\u0010\u008f\u0002R)\u0010\u0096\u0002\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0002\u0010\u00e7\u0001\u001a\u0006\u0008\u0092\u0002\u0010\u0093\u0002\"\u0006\u0008\u0094\u0002\u0010\u0095\u0002R%\u0010\u009c\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u009a\u0002\u0010\u009b\u0002R&\u0010\u009f\u0002\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00fd\u00010\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009d\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u009e\u0002\u0010\u009b\u0002R#\u0010\u00a2\u0002\u001a\t\u0012\u0004\u0012\u00020=0\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a0\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u00a1\u0002\u0010\u009b\u0002R8\u0010\u00a5\u0002\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u001d \u00f0\u0001*\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u000b0\u000b0\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a3\u0002\u0010\u00f2\u0001\u001a\u0006\u0008\u00a4\u0002\u0010\u00f4\u0001R,\u0010\u00a8\u0002\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010f0f0\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a6\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u00a7\u0002\u0010\u009b\u0002RD\u0010\u00ab\u0002\u001a*\u0012%\u0012#\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003 \u00f0\u0001*\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00100\u00100\u00ef\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a9\u0002\u0010\u00f2\u0001\u001a\u0006\u0008\u00aa\u0002\u0010\u00f4\u0001R8\u0010\u00ae\u0002\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0011 \u00f0\u0001*\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000b0\u000b0\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ac\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u00ad\u0002\u0010\u009b\u0002R\'\u0010\u00b0\u0002\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010\u00110\u00110\u0097\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0002\u0010\u0099\u0002R\'\u0010\u00b2\u0002\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010=0=0\u00ef\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0002\u0010\u00f2\u0001R\'\u0010\u00b4\u0002\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010=0=0\u00ef\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0002\u0010\u00f2\u0001R\u001f\u0010\u00b7\u0002\u001a\n\u0012\u0005\u0012\u00030\u00b5\u00020\u0097\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0002\u0010\u0099\u0002R\"\u0010\u00b9\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0\u0097\u00028\u0006\u00a2\u0006\u000f\n\u0005\u0008F\u0010\u0099\u0002\u001a\u0006\u0008\u00b8\u0002\u0010\u009b\u0002R#\u0010\u0017\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00ef\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0012\u0010\u00f2\u0001\u001a\u0006\u0008\u00ba\u0002\u0010\u00f4\u0001R$\u0010\u00bc\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u00ef\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008M\u0010\u00f2\u0001\u001a\u0006\u0008\u00bb\u0002\u0010\u00f4\u0001R\'\u00103\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00ef\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008,\u0010\u00f2\u0001\u001a\u0006\u0008\u00bd\u0002\u0010\u00f4\u0001R)\u0010\u00c0\u0002\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0\u000b0\u0097\u00028\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00be\u0002\u0010\u0099\u0002\u001a\u0006\u0008\u00bf\u0002\u0010\u009b\u0002R\"\u0010\u00c2\u0002\u001a\t\u0012\u0004\u0012\u00020\u000f0\u00ef\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008_\u0010\u00f2\u0001\u001a\u0006\u0008\u00c1\u0002\u0010\u00f4\u0001R(\u0010\u00c4\u0002\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0097\u00028\u0006\u00a2\u0006\u000f\n\u0005\u0008\u001c\u0010\u0099\u0002\u001a\u0006\u0008\u00c3\u0002\u0010\u009b\u0002R+\u0010\u00c6\u0002\u001a\u0012\u0012\r\u0012\u000b \u00f0\u0001*\u0004\u0018\u00010\u00110\u00110\u0097\u00028\u0006\u00a2\u0006\u000f\n\u0005\u0008/\u0010\u0099\u0002\u001a\u0006\u0008\u00c5\u0002\u0010\u009b\u0002R$\u0010\u00c8\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0097\u00028\u0006\u00a2\u0006\u000f\n\u0005\u0008.\u0010\u0099\u0002\u001a\u0006\u0008\u00c7\u0002\u0010\u009b\u0002R\u001e\u0010\u00cc\u0002\u001a\n\u0012\u0005\u0012\u00030\u00ca\u00020\u00c9\u00028\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008N\u0010\u00cb\u0002R\u0017\u0010\u00cf\u0002\u001a\u0005\u0018\u00010\u00f9\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00cd\u0002\u0010\u00ce\u0002R\u0014\u0010\u00d2\u0002\u001a\u00020=8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d0\u0002\u0010\u00d1\u0002R\u0014\u0010\u00d4\u0002\u001a\u00020=8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d3\u0002\u0010\u00d1\u0002R\u001a\u0010\u00d7\u0002\u001a\u0008\u0012\u0004\u0012\u00020R0\u000b8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d5\u0002\u0010\u00d6\u0002R\u0016\u0010\u00da\u0002\u001a\u0004\u0018\u00010R8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00d8\u0002\u0010\u00d9\u0002R\u0014\u0010\u00dc\u0002\u001a\u00020=8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00db\u0002\u0010\u00d1\u0002R\u0014\u0010\u00de\u0002\u001a\u00020=8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00dd\u0002\u0010\u00d1\u0002\u00a8\u0006\u00e5\u0002"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;",
        "",
        "sessionStartTime",
        "Lkotlinx/coroutines/j2;",
        "I1",
        "Lcom/im/freechat/shared/entities/TypingEvent;",
        "typingEvent",
        "",
        "k1",
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "list",
        "E1",
        "",
        "",
        "",
        "f0",
        "P1",
        "G1",
        "Z0",
        "Lcom/im/freechat/ui/chat/chatdetails/z1;",
        "extraMessageInfo",
        "A1",
        "chatId",
        "forwardedMessageIds",
        "T0",
        "k0",
        "Landroid/net/Uri;",
        "uri",
        "a1",
        "y1",
        "mediaId",
        "Landroid/util/Size;",
        "size",
        "x1",
        "messageId",
        "n1",
        "z1",
        "H1",
        "Ljava/io/File;",
        "file",
        "F1",
        "h0",
        "messageIds",
        "m0",
        "l0",
        "message",
        "g1",
        "N1",
        "messages",
        "p1",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "attachments",
        "o1",
        "Lcom/im/freechat/shared/entities/message/FileAttachment;",
        "fileMessage",
        "J1",
        "id",
        "startPos",
        "",
        "forcePause",
        "h1",
        "q1",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "msg",
        "l1",
        "p0",
        "M1",
        "e0",
        "L1",
        "onCleared",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "attachment",
        "o0",
        "it",
        "g0",
        "n0",
        "messageWrapper",
        "state",
        "r1",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "b1",
        "m1",
        "height",
        "B1",
        "z0",
        "u1",
        "t1",
        "w1",
        "s1",
        "c1",
        "forEveryone",
        "j0",
        "userId",
        "e1",
        "url",
        "d1",
        "v1",
        "contentUri",
        "Lcom/im/freechat/shared/entities/message/ChosenAttachment;",
        "Q1",
        "extension",
        "M0",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "c",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "subscribeChatMessagesInteractor",
        "Lcom/im/freechat/domain/usecase/chat/r;",
        "d",
        "Lcom/im/freechat/domain/usecase/chat/r;",
        "subscribeChatInteractor",
        "Lcom/im/freechat/domain/usecase/auth/e;",
        "e",
        "Lcom/im/freechat/domain/usecase/auth/e;",
        "listenConnectionStateInteractor",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "f",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "deleteChatByIdInteractor",
        "Lcom/im/freechat/domain/usecase/messages/j;",
        "g",
        "Lcom/im/freechat/domain/usecase/messages/j;",
        "sendMessageInteractor",
        "Lcom/im/freechat/domain/usecase/messages/b;",
        "h",
        "Lcom/im/freechat/domain/usecase/messages/b;",
        "getMessagesByIdInteractor",
        "Lcom/im/freechat/domain/usecase/messages/n;",
        "i",
        "Lcom/im/freechat/domain/usecase/messages/n;",
        "subscribePinnedMessageByChatIdInteractor",
        "Lcom/im/freechat/media/audio/c;",
        "j",
        "Lcom/im/freechat/media/audio/c;",
        "audioRecorder",
        "Lcom/im/freechat/domain/usecase/chat/a;",
        "k",
        "Lcom/im/freechat/domain/usecase/chat/a;",
        "clearHistoryInteractor",
        "Lcom/im/freechat/domain/usecase/members/h;",
        "m",
        "Lcom/im/freechat/domain/usecase/members/h;",
        "subscribeChatMembersInteractor",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "n",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "followContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "o",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "removeFriendInteractor",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "p",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "blockContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "q",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "unblockContactInteractor",
        "Lcom/im/freechat/domain/h;",
        "r",
        "Lcom/im/freechat/domain/h;",
        "fileUtility",
        "Lcom/im/freechat/domain/usecase/messages/i;",
        "s",
        "Lcom/im/freechat/domain/usecase/messages/i;",
        "sendGiphyStickerInteractor",
        "Lcom/im/freechat/domain/usecase/chat/q;",
        "t",
        "Lcom/im/freechat/domain/usecase/chat/q;",
        "startTypingInteractor",
        "Lcom/im/freechat/domain/usecase/chat/f;",
        "u",
        "Lcom/im/freechat/domain/usecase/chat/f;",
        "endTypingInteractor",
        "Lcom/im/freechat/domain/usecase/messages/c;",
        "v",
        "Lcom/im/freechat/domain/usecase/messages/c;",
        "pinMessageInteractor",
        "Lcom/im/freechat/domain/usecase/messages/o;",
        "w",
        "Lcom/im/freechat/domain/usecase/messages/o;",
        "unpinMessageInteractor",
        "Lcom/im/freechat/domain/usecase/chat/j;",
        "x",
        "Lcom/im/freechat/domain/usecase/chat/j;",
        "listenTypingInteractor",
        "Lcom/im/freechat/domain/usecase/messages/p;",
        "y",
        "Lcom/im/freechat/domain/usecase/messages/p;",
        "updateDraftMessageInteractor",
        "Lcom/im/freechat/domain/usecase/currentuser/h;",
        "z",
        "Lcom/im/freechat/domain/usecase/currentuser/h;",
        "setKeyboardHeightSettingInteractor",
        "Lcom/im/freechat/domain/usecase/currentuser/b;",
        "A",
        "Lcom/im/freechat/domain/usecase/currentuser/b;",
        "getKeyboardHeightSettingInteractor",
        "Lcom/im/freechat/utils/f;",
        "B",
        "Lcom/im/freechat/utils/f;",
        "downloadUtil",
        "Lcom/im/freechat/domain/usecase/messages/a;",
        "C",
        "Lcom/im/freechat/domain/usecase/messages/a;",
        "addToFavoritesInteractor",
        "Lcom/im/freechat/domain/usecase/messages/f;",
        "D",
        "Lcom/im/freechat/domain/usecase/messages/f;",
        "removeMessagesForMyselfInteractor",
        "Lcom/im/freechat/domain/usecase/messages/e;",
        "E",
        "Lcom/im/freechat/domain/usecase/messages/e;",
        "removeMessagesForEveryoneInteractor",
        "Lcom/im/freechat/domain/usecase/messages/d;",
        "F",
        "Lcom/im/freechat/domain/usecase/messages/d;",
        "readMessageByIdInteractor",
        "Lcom/im/freechat/domain/usecase/chat/s;",
        "G",
        "Lcom/im/freechat/domain/usecase/chat/s;",
        "subscribeChatsSyncStateInteractor",
        "Lcom/im/freechat/domain/usecase/messages/g;",
        "H",
        "Lcom/im/freechat/domain/usecase/messages/g;",
        "resendMessageInteractor",
        "Lcom/im/freechat/domain/n;",
        "I",
        "Lcom/im/freechat/domain/n;",
        "notificationManager",
        "Landroid/content/res/Resources;",
        "J",
        "Landroid/content/res/Resources;",
        "resources",
        "K",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "L",
        "Landroidx/lifecycle/MutableLiveData;",
        "B0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "M",
        "I0",
        "selectedIds",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "N",
        "t0",
        "chatLiveData",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "O",
        "chatMembers",
        "P",
        "N0",
        "typedText",
        "Ljava/util/Timer;",
        "Q",
        "Ljava/util/Timer;",
        "Q0",
        "()Ljava/util/Timer;",
        "D1",
        "(Ljava/util/Timer;)V",
        "typingTimer",
        "Lkotlin/Function1;",
        "R",
        "Lkotlin/jvm/functions/Function1;",
        "L0",
        "()Lkotlin/jvm/functions/Function1;",
        "startTyping",
        "S",
        "J0",
        "()I",
        "C1",
        "(I)V",
        "selectionEnd",
        "Landroidx/lifecycle/LiveData;",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "D0",
        "()Landroidx/lifecycle/LiveData;",
        "mentionHints",
        "U",
        "w0",
        "currentUser",
        "V",
        "r0",
        "canClearHistory",
        "W",
        "C0",
        "mediaChosen",
        "X",
        "q0",
        "attachmentToDisplay",
        "Y",
        "O0",
        "typingEvents",
        "Z",
        "P0",
        "typingSet",
        "a0",
        "onlineCount",
        "b0",
        "socketConnected",
        "c0",
        "chatsSynchronizing",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;",
        "d0",
        "networkState",
        "v0",
        "chatStatus",
        "y0",
        "F0",
        "pinnedMessage",
        "E0",
        "i0",
        "x0",
        "displayMessageList",
        "H0",
        "searchQuery",
        "G0",
        "searchMessagesList",
        "R0",
        "unreadCount",
        "A0",
        "lastUnread",
        "Landroidx/lifecycle/Observer;",
        "",
        "Landroidx/lifecycle/Observer;",
        "playerObserver",
        "s0",
        "()Lcom/im/freechat/shared/entities/chat/Chat;",
        "chat",
        "S0",
        "()Z",
        "userHasSuperRights",
        "W0",
        "isGroupAdmin",
        "u0",
        "()Ljava/util/List;",
        "chatMemberContacts",
        "K0",
        "()Lcom/im/freechat/shared/entities/contact/UserModel;",
        "singleChatContact",
        "V0",
        "isGroup",
        "U0",
        "isChannel",
        "Lp4/e;",
        "playerUtil",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V",
        "Directions",
        "NetworkState",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final A:Lcom/im/freechat/domain/usecase/currentuser/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final B:Lcom/im/freechat/utils/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final C:Lcom/im/freechat/domain/usecase/messages/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final D:Lcom/im/freechat/domain/usecase/messages/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final E:Lcom/im/freechat/domain/usecase/messages/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final F:Lcom/im/freechat/domain/usecase/messages/d;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final G:Lcom/im/freechat/domain/usecase/chat/s;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final H:Lcom/im/freechat/domain/usecase/messages/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final I:Lcom/im/freechat/domain/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final J:Landroid/content/res/Resources;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private K:I

.field private final L:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final M:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final N:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final O:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final P:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private Q:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final R:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Unit;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile S:I

.field private final T:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final U:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final V:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final W:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final X:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/im/freechat/shared/entities/message/ChosenAttachment;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final Y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Lcom/im/freechat/shared/entities/TypingEvent;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final Z:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final a0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/usecase/messages/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/chat/r;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/auth/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/usecase/chat/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/ui/chat/chatdetails/z1;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/domain/usecase/messages/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/usecase/messages/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/usecase/messages/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/media/audio/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/domain/usecase/chat/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lp4/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Lcom/im/freechat/domain/usecase/members/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m0:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Lcom/im/freechat/domain/usecase/contact/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n0:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Lcom/im/freechat/domain/usecase/contact/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lcom/im/freechat/domain/usecase/contact/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Lcom/im/freechat/domain/usecase/contact/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Lcom/im/freechat/domain/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Lcom/im/freechat/domain/usecase/messages/i;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Lcom/im/freechat/domain/usecase/chat/q;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Lcom/im/freechat/domain/usecase/chat/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Lcom/im/freechat/domain/usecase/messages/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final w:Lcom/im/freechat/domain/usecase/messages/o;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Lcom/im/freechat/domain/usecase/chat/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Lcom/im/freechat/domain/usecase/messages/p;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Lcom/im/freechat/domain/usecase/currentuser/h;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/messages/j;Lcom/im/freechat/domain/usecase/messages/b;Lcom/im/freechat/domain/usecase/messages/n;Lcom/im/freechat/media/audio/c;Lcom/im/freechat/domain/usecase/chat/a;Lp4/e;Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/usecase/messages/i;Lcom/im/freechat/domain/usecase/chat/q;Lcom/im/freechat/domain/usecase/chat/f;Lcom/im/freechat/domain/usecase/messages/c;Lcom/im/freechat/domain/usecase/messages/o;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/messages/p;Lcom/im/freechat/domain/usecase/currentuser/h;Lcom/im/freechat/domain/usecase/currentuser/b;Lcom/im/freechat/utils/f;Lcom/im/freechat/domain/usecase/messages/a;Lcom/im/freechat/domain/usecase/messages/f;Lcom/im/freechat/domain/usecase/messages/e;Lcom/im/freechat/domain/usecase/messages/d;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/messages/g;Lcom/im/freechat/domain/n;Landroid/content/res/Resources;)V
    .locals 16
    .param p1    # Lcom/im/freechat/domain/usecase/messages/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/chat/r;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/auth/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/chat/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/domain/usecase/messages/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/domain/usecase/messages/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/usecase/messages/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/media/audio/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/domain/usecase/chat/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Lp4/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Lcom/im/freechat/domain/usecase/members/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p12    # Lcom/im/freechat/domain/usecase/contact/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p13    # Lcom/im/freechat/domain/usecase/contact/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Lcom/im/freechat/domain/usecase/contact/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Lcom/im/freechat/domain/usecase/contact/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p16    # Lcom/im/freechat/domain/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Lcom/im/freechat/domain/usecase/messages/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p18    # Lcom/im/freechat/domain/usecase/chat/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p19    # Lcom/im/freechat/domain/usecase/chat/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p20    # Lcom/im/freechat/domain/usecase/messages/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p21    # Lcom/im/freechat/domain/usecase/messages/o;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p22    # Lcom/im/freechat/domain/usecase/chat/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p23    # Lcom/im/freechat/domain/usecase/messages/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p24    # Lcom/im/freechat/domain/usecase/currentuser/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p25    # Lcom/im/freechat/domain/usecase/currentuser/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p26    # Lcom/im/freechat/utils/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p27    # Lcom/im/freechat/domain/usecase/messages/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p28    # Lcom/im/freechat/domain/usecase/messages/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p29    # Lcom/im/freechat/domain/usecase/messages/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p30    # Lcom/im/freechat/domain/usecase/messages/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p31    # Lcom/im/freechat/domain/usecase/chat/s;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p32    # Lcom/im/freechat/domain/usecase/messages/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p33    # Lcom/im/freechat/domain/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p34    # Landroid/content/res/Resources;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "subscribeChatMessagesInteractor"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatInteractor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenConnectionStateInteractor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteChatByIdInteractor"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMessageInteractor"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getMessagesByIdInteractor"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribePinnedMessageByChatIdInteractor"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioRecorder"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearHistoryInteractor"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerUtil"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatMembersInteractor"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followContactInteractor"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendInteractor"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockContactInteractor"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unblockContactInteractor"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtility"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendGiphyStickerInteractor"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startTypingInteractor"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTypingInteractor"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinMessageInteractor"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unpinMessageInteractor"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenTypingInteractor"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateDraftMessageInteractor"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setKeyboardHeightSettingInteractor"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getKeyboardHeightSettingInteractor"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadUtil"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addToFavoritesInteractor"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMessagesForMyselfInteractor"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMessagesForEveryoneInteractor"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageByIdInteractor"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatsSyncStateInteractor"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resendMessageInteractor"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/im/freechat/base/a;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->c:Lcom/im/freechat/domain/usecase/messages/k;

    .line 3
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->d:Lcom/im/freechat/domain/usecase/chat/r;

    .line 4
    iput-object v3, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->e:Lcom/im/freechat/domain/usecase/auth/e;

    .line 5
    iput-object v4, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f:Lcom/im/freechat/domain/usecase/chat/e;

    .line 6
    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->g:Lcom/im/freechat/domain/usecase/messages/j;

    .line 7
    iput-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h:Lcom/im/freechat/domain/usecase/messages/b;

    .line 8
    iput-object v7, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i:Lcom/im/freechat/domain/usecase/messages/n;

    .line 9
    iput-object v8, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    .line 10
    iput-object v9, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->k:Lcom/im/freechat/domain/usecase/chat/a;

    .line 11
    iput-object v10, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    .line 12
    iput-object v11, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m:Lcom/im/freechat/domain/usecase/members/h;

    .line 13
    iput-object v12, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n:Lcom/im/freechat/domain/usecase/contact/b;

    .line 14
    iput-object v13, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->o:Lcom/im/freechat/domain/usecase/contact/f;

    .line 15
    iput-object v14, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->p:Lcom/im/freechat/domain/usecase/contact/a;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->q:Lcom/im/freechat/domain/usecase/contact/j;

    .line 17
    iput-object v15, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s:Lcom/im/freechat/domain/usecase/messages/i;

    .line 19
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->t:Lcom/im/freechat/domain/usecase/chat/q;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    .line 20
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u:Lcom/im/freechat/domain/usecase/chat/f;

    .line 21
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->v:Lcom/im/freechat/domain/usecase/messages/c;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    .line 22
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->w:Lcom/im/freechat/domain/usecase/messages/o;

    .line 23
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->x:Lcom/im/freechat/domain/usecase/chat/j;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    .line 24
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->y:Lcom/im/freechat/domain/usecase/messages/p;

    .line 25
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->z:Lcom/im/freechat/domain/usecase/currentuser/h;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    .line 26
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->A:Lcom/im/freechat/domain/usecase/currentuser/b;

    .line 27
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B:Lcom/im/freechat/utils/f;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    .line 28
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->C:Lcom/im/freechat/domain/usecase/messages/a;

    .line 29
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->D:Lcom/im/freechat/domain/usecase/messages/f;

    move-object/from16 v1, p29

    move-object/from16 v2, p30

    .line 30
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->E:Lcom/im/freechat/domain/usecase/messages/e;

    .line 31
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->F:Lcom/im/freechat/domain/usecase/messages/d;

    move-object/from16 v1, p31

    move-object/from16 v2, p32

    .line 32
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->G:Lcom/im/freechat/domain/usecase/chat/s;

    .line 33
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->H:Lcom/im/freechat/domain/usecase/messages/g;

    move-object/from16 v1, p33

    move-object/from16 v2, p34

    .line 34
    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I:Lcom/im/freechat/domain/n;

    .line 35
    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->J:Landroid/content/res/Resources;

    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P:Landroidx/lifecycle/MutableLiveData;

    .line 41
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object v6

    .line 42
    new-instance v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9, v6, v7}, Lcom/im/freechat/domain/f;->c(JLkotlinx/coroutines/s0;Lkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    iput-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->R:Lkotlin/jvm/functions/Function1;

    .line 43
    new-instance v6, Lcom/im/freechat/ui/chat/chatdetails/q1;

    invoke-direct {v6, v0}, Lcom/im/freechat/ui/chat/chatdetails/q1;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    invoke-static {v5, v6}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const-string v6, "map(typedText) {\n       \u2026        } else null\n    }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->T:Landroidx/lifecycle/LiveData;

    .line 44
    sget-object v5, Lcom/im/freechat/ui/chat/chatdetails/u1;->a:Lcom/im/freechat/ui/chat/chatdetails/u1;

    invoke-static {v4, v5}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const-string v6, "map(chatMembers) {\n     \u2026act.isCurrentUser }\n    }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U:Landroidx/lifecycle/LiveData;

    .line 45
    sget-object v6, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$b;

    invoke-static {v3, v5, v6}, Lo4/m;->n(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->V:Landroidx/lifecycle/LiveData;

    .line 46
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v6, Lcom/im/freechat/ui/chat/chatdetails/r1;

    invoke-direct {v6, v0}, Lcom/im/freechat/ui/chat/chatdetails/r1;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    invoke-static {v5, v6}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const-string v6, "map(mediaChosen) {\n     \u2026nt(it.toString()) }\n    }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->X:Landroidx/lifecycle/LiveData;

    .line 48
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Y:Landroidx/lifecycle/MutableLiveData;

    .line 49
    sget-object v6, Lcom/im/freechat/ui/chat/chatdetails/w1;->a:Lcom/im/freechat/ui/chat/chatdetails/w1;

    invoke-static {v5, v6}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const-string v6, "map(typingEvents) {\n    \u2026p { it.key.userId }\n    }"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v5}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const-string v6, "distinctUntilChanged(this)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object v5, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Z:Landroidx/lifecycle/LiveData;

    .line 52
    sget-object v7, Lcom/im/freechat/ui/chat/chatdetails/v1;->a:Lcom/im/freechat/ui/chat/chatdetails/v1;

    invoke-static {v4, v7}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    const-string v7, "map(chatMembers) { list \u2026ng.MAX_VALUE } ?: 1\n    }"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v4}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object v4, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->a0:Landroidx/lifecycle/LiveData;

    .line 55
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->b0:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v7, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->c0:Landroidx/lifecycle/MutableLiveData;

    .line 57
    sget-object v2, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$r;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$r;

    invoke-static {v6, v7, v2}, Lo4/m;->n(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->d0:Landroidx/lifecycle/LiveData;

    .line 58
    new-instance v6, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;

    invoke-direct {v6, v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    invoke-static {v5, v4, v3, v2, v6}, Lo4/m;->l(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function4;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->e0:Landroidx/lifecycle/LiveData;

    .line 59
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->g0:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    .line 62
    sget-object v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$h;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$h;

    invoke-static {v1, v2, v3}, Lo4/m;->A(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function3;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i0:Landroidx/lifecycle/LiveData;

    .line 63
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j0:Landroidx/lifecycle/MutableLiveData;

    .line 64
    sget-object v4, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$x;

    invoke-static {v2, v3, v4}, Lo4/m;->n(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->k0:Landroidx/lifecycle/LiveData;

    .line 65
    sget-object v2, Lcom/im/freechat/ui/chat/chatdetails/s1;->a:Lcom/im/freechat/ui/chat/chatdetails/s1;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "map(displayMessageList) \u2026READ\n        } ?: 0\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l0:Landroidx/lifecycle/LiveData;

    .line 66
    sget-object v2, Lcom/im/freechat/ui/chat/chatdetails/t1;->a:Lcom/im/freechat/ui/chat/chatdetails/t1;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "map(displayMessageList) \u2026HAVE_READ\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m0:Landroidx/lifecycle/LiveData;

    .line 67
    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/x1;

    invoke-direct {v1, v0}, Lcom/im/freechat/ui/chat/chatdetails/x1;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static final synthetic A(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    return-object p0
.end method

.method public static final synthetic B(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/contact/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n:Lcom/im/freechat/domain/usecase/contact/b;

    return-object p0
.end method

.method public static final synthetic C(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/currentuser/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->A:Lcom/im/freechat/domain/usecase/currentuser/b;

    return-object p0
.end method

.method public static final synthetic D(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h:Lcom/im/freechat/domain/usecase/messages/b;

    return-object p0
.end method

.method public static final synthetic E(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/auth/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->e:Lcom/im/freechat/domain/usecase/auth/e;

    return-object p0
.end method

.method private final E1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/im/freechat/ui/chat/chatdetails/z1;

    .line 3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    sget-object v4, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->FORWARD:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {v2, v3, v4, v5, p1}, Lcom/im/freechat/ui/chat/chatdetails/z1;-><init>(Lcom/im/freechat/shared/entities/message/Message;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final synthetic F(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->x:Lcom/im/freechat/domain/usecase/chat/j;

    return-object p0
.end method

.method public static final synthetic G(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->d0:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static final synthetic H(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->v:Lcom/im/freechat/domain/usecase/messages/c;

    return-object p0
.end method

.method public static final synthetic I(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/d;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->F:Lcom/im/freechat/domain/usecase/messages/d;

    return-object p0
.end method

.method private final I1(J)Lkotlinx/coroutines/j2;
    .locals 0

    new-instance p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$c0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic J(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/contact/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->o:Lcom/im/freechat/domain/usecase/contact/f;

    return-object p0
.end method

.method public static final synthetic K(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->E:Lcom/im/freechat/domain/usecase/messages/e;

    return-object p0
.end method

.method private static final K1(Ljava/util/Map;)Ljava/util/List;
    .locals 7

    const-string v0, "it"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/shared/entities/TypingEvent;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public static final synthetic L(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->D:Lcom/im/freechat/domain/usecase/messages/f;

    return-object p0
.end method

.method public static final synthetic M(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/g;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->H:Lcom/im/freechat/domain/usecase/messages/g;

    return-object p0
.end method

.method public static final synthetic N(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->J:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static final synthetic O(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/i;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s:Lcom/im/freechat/domain/usecase/messages/i;

    return-object p0
.end method

.method private static final O1(Ljava/util/List;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 3
    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 6
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic P(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->g:Lcom/im/freechat/domain/usecase/messages/j;

    return-object p0
.end method

.method private final P1()V
    .locals 0

    return-void
.end method

.method public static final synthetic Q(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/currentuser/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->z:Lcom/im/freechat/domain/usecase/currentuser/h;

    return-object p0
.end method

.method public static final synthetic R(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->b0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic S(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/q;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->t:Lcom/im/freechat/domain/usecase/chat/q;

    return-object p0
.end method

.method public static final synthetic T(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/r;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->d:Lcom/im/freechat/domain/usecase/chat/r;

    return-object p0
.end method

.method public static final synthetic U(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/members/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m:Lcom/im/freechat/domain/usecase/members/h;

    return-object p0
.end method

.method public static final synthetic V(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->c:Lcom/im/freechat/domain/usecase/messages/k;

    return-object p0
.end method

.method public static final synthetic W(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->G:Lcom/im/freechat/domain/usecase/chat/s;

    return-object p0
.end method

.method public static final synthetic X(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/n;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i:Lcom/im/freechat/domain/usecase/messages/n;

    return-object p0
.end method

.method private static final X0(Ljava/util/List;)Ljava/lang/Integer;
    .locals 2

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 4
    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    .line 7
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static final synthetic Y(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/contact/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->q:Lcom/im/freechat/domain/usecase/contact/j;

    return-object p0
.end method

.method private static final Y0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s0()Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getDraftMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$p;

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$p;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 3
    :cond_4
    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$q;

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$q;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 4
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    sget-object v3, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v0, v3, :cond_8

    .line 5
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "@"

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6
    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "\\s+"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-static {v6, v0, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, p1

    move-object v8, v6

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S:I

    if-ne v7, v8, :cond_6

    move-object v5, v6

    goto :goto_3

    :cond_7
    move-object v1, v5

    :cond_8
    return-object v1
.end method

.method public static final synthetic Z(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/o;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->w:Lcom/im/freechat/domain/usecase/messages/o;

    return-object p0
.end method

.method public static final synthetic a0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/p;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->y:Lcom/im/freechat/domain/usecase/messages/p;

    return-object p0
.end method

.method public static final synthetic b0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lcom/im/freechat/shared/entities/TypingEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->k1(Lcom/im/freechat/shared/entities/TypingEvent;)V

    return-void
.end method

.method public static final synthetic c0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->E1(Ljava/util/List;)V

    return-void
.end method

.method private static final d0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/im/freechat/domain/h;->f(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final f0(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u0()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_1

    .line 8
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static final f1(Ljava/util/List;)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/im/freechat/shared/entities/chat/ChatMember;

    .line 3
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/contact/UserModel;->getLastOnline()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K1(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final i0(Ljava/util/List;)Lcom/im/freechat/shared/entities/chat/ChatMember;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/im/freechat/shared/entities/chat/ChatMember;

    return-object v0
.end method

.method public static synthetic i1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;JJZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h1(JJZ)V

    return-void
.end method

.method public static synthetic j(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/Object;)V

    return-void
.end method

.method private static final j1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P1()V

    return-void
.end method

.method public static synthetic k(Ljava/util/List;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->O1(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final k1(Lcom/im/freechat/shared/entities/TypingEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getStart()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/ChatMember;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v4

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v0

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Y:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lkotlin/Pair;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 7
    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Y:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 11
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/im/freechat/shared/entities/TypingEvent;

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic l(Ljava/util/List;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->X0(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/util/List;)Lcom/im/freechat/shared/entities/chat/ChatMember;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i0(Ljava/util/List;)Lcom/im/freechat/shared/entities/chat/ChatMember;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->d0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/util/List;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f1(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Y0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->C:Lcom/im/freechat/domain/usecase/messages/a;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/media/audio/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/contact/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->p:Lcom/im/freechat/domain/usecase/contact/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I
    .locals 0

    iget p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    return p0
.end method

.method public static final synthetic v(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic w(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->c0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic x(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->k:Lcom/im/freechat/domain/usecase/chat/a;

    return-object p0
.end method

.method public static final synthetic y(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f:Lcom/im/freechat/domain/usecase/chat/e;

    return-object p0
.end method

.method public static final synthetic z(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/chat/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u:Lcom/im/freechat/domain/usecase/chat/f;

    return-object p0
.end method


# virtual methods
.method public final A0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->m0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final A1(Lcom/im/freechat/ui/chat/chatdetails/z1;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/z1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final B0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final B1(I)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v1

    new-instance v4, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$a0;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$a0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final C0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final C1(I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S:I

    return-void
.end method

.method public final D0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->T:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final D1(Ljava/util/Timer;)V
    .locals 0
    .param p1    # Ljava/util/Timer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Q:Ljava/util/Timer;

    return-void
.end method

.method public final E0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final F0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->g0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final F1(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    invoke-interface {v0, p1}, Lcom/im/freechat/media/audio/c;->b(Ljava/io/File;)V

    return-void
.end method

.method public final G0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->k0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final G1()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->r()V

    return-void
.end method

.method public final H0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final H1()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/im/freechat/media/audio/c;->g(Z)V

    return-void
.end method

.method public final I0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final J0()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S:I

    return v0
.end method

.method public final J1(Lcom/im/freechat/shared/entities/message/FileAttachment;)V
    .locals 4
    .param p1    # Lcom/im/freechat/shared/entities/message/FileAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fileMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B:Lcom/im/freechat/utils/f;

    .line 2
    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    .line 3
    new-instance v2, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$d0;

    invoke-direct {v2, p1, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$d0;-><init>(Lcom/im/freechat/shared/entities/message/FileAttachment;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    sget-object v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$e0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$e0;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/im/freechat/utils/f;->e(Lcom/im/freechat/shared/entities/message/Attachment;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final K0()Lcom/im/freechat/shared/entities/contact/UserModel;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/im/freechat/shared/entities/contact/UserModel;

    return-object v1
.end method

.method public final L0()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Unit;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->R:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final L1()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$f0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$f0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final M0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    invoke-interface {v0, p1}, Lcom/im/freechat/domain/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final M1()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$g0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final N0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final N1()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$h0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$h0;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final O0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Lcom/im/freechat/shared/entities/TypingEvent;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Y:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final P0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Z:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final Q0()Ljava/util/Timer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Q:Ljava/util/Timer;

    return-object v0
.end method

.method public final Q1(Landroid/net/Uri;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentUri.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/im/freechat/domain/h;->b(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;->IMAGE_FILE:Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;

    if-ne v1, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->r:Lcom/im/freechat/domain/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/im/freechat/domain/h;->f(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/ChosenAttachment;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final R0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final S0()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/ChatMember;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->isSuperRole()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final T0(ILjava/util/List;J)V
    .locals 7
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "forwardedMessageIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I:Lcom/im/freechat/domain/n;

    invoke-interface {v0, p1}, Lcom/im/freechat/domain/n;->b(I)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$m;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$m;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 5
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 6
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->g()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 7
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$n;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V

    invoke-interface {v0, v1}, Lcom/im/freechat/media/audio/c;->f(Lkotlin/jvm/functions/Function4;)V

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I1(J)Lkotlinx/coroutines/j2;

    .line 9
    new-instance p3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$o;

    invoke-direct {p3, p0, p2, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$o;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p3}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final U0()Z
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->CHANNEL:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final V0()Z
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final W0()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/ChatMember;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->isGroupAdmin()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Z0()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$s;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final a1(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b1(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 8
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v1, v0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->T:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "@"

    const-string v4, ""

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->S:I

    .line 7
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s0()Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/im/freechat/extend/g;->b(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_GROUP_MANAGER:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 3
    iget v3, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "chatId"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_IN_APP_BROWSER:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v2, v0

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e0()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$a;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final e1(I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "contactId"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->s0()Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v2, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "fromUserSingleChat"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v3

    .line 3
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;->NAVIGATE_USER_PROFILE:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-virtual {p0, v0, p1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public final g0(J)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B:Lcom/im/freechat/utils/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/im/freechat/utils/f;->i(Ljava/util/List;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final g1(Lcom/im/freechat/shared/entities/message/Message;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$t;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final h0()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j:Lcom/im/freechat/media/audio/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/im/freechat/media/audio/c;->g(Z)V

    return-void
.end method

.method public final h1(JJZ)V
    .locals 0

    return-void
.end method

.method public final j0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$d;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final k0()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$e;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final l0(Ljava/util/List;)V
    .locals 3
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$f;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final l1(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$u;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Ljava/util/List;)V
    .locals 3
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$g;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final m1()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final n1(J)Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$v;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;JLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Lcom/im/freechat/shared/entities/message/VideoAttachment;)V
    .locals 4
    .param p1    # Lcom/im/freechat/shared/entities/message/VideoAttachment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B:Lcom/im/freechat/utils/f;

    .line 2
    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    .line 3
    new-instance v2, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;

    invoke-direct {v2, p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$i;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lcom/im/freechat/shared/entities/message/VideoAttachment;)V

    sget-object v3, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$j;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$j;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/im/freechat/utils/f;->e(Lcom/im/freechat/shared/entities/message/Attachment;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final o1(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/shared/entities/message/Attachment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attachments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 2
    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B:Lcom/im/freechat/utils/f;

    iget v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    invoke-virtual {v1, v0, v2}, Lcom/im/freechat/utils/f;->k(Lcom/im/freechat/shared/entities/message/Attachment;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->I:Lcom/im/freechat/domain/n;

    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K:I

    invoke-interface {v0, v1}, Lcom/im/freechat/domain/n;->d(I)V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "android.media.metadata.ALBUM"

    .line 4
    invoke-virtual {v0, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->r()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 7
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0}, Lp4/e;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->n0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final p0()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final p1(Ljava/util/List;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;)",
            "Lkotlinx/coroutines/j2;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$w;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final q0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/im/freechat/shared/entities/message/ChosenAttachment;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->X:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final q1(J)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->l:Lp4/e;

    invoke-virtual {v0, p1, p2}, Lp4/e;->p(J)V

    return-void
.end method

.method public final r0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->V:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final r1(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Z)V
    .locals 5
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/p;->y(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "value"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 7
    invoke-interface {v1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :cond_1
    invoke-virtual {p2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/im/freechat/extend/p;->y(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 13
    invoke-interface {v1}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->minus(Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    :cond_4
    invoke-virtual {p2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    .line 14
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    :cond_6
    invoke-virtual {p2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez p2, :cond_9

    .line 15
    iget-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->minus(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    :cond_8
    invoke-virtual {p2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final s0()Lcom/im/freechat/shared/entities/chat/Chat;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    return-object v0
.end method

.method public final s1()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 5
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    const-string v6, "value"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    check-cast v6, Lcom/im/freechat/shared/entities/message/Message;

    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/im/freechat/extend/p;->A(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_6
    :goto_3
    return v1
.end method

.method public final t0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final t1()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->V:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 5
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_b

    const-string v6, "value"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v7

    .line 6
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 7
    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 8
    invoke-interface {v8}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_7

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_6

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_3

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    check-cast v6, Lcom/im/freechat/shared/entities/message/Message;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v2

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public final u0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    .line 5
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final u1()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    const-string v4, "value"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v5

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    check-cast v4, Lcom/im/freechat/shared/entities/message/Message;

    if-nez v4, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/im/freechat/extend/p;->o(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/im/freechat/extend/p;->x(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method public final v0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->e0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final v1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-gt v2, v0, :cond_1

    const/16 v3, 0xb

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 4
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    :goto_2
    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public final w0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->U:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final w1()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 5
    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->h0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v7

    .line 6
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 7
    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 8
    invoke-interface {v8}, Lcom/im/freechat/shared/entities/message/Attachment;->getMediaId()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_7

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_6

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_3

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    check-cast v6, Lcom/im/freechat/shared/entities/message/Message;

    if-eqz v6, :cond_b

    .line 9
    invoke-static {v6}, Lcom/im/freechat/extend/p;->v(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_2

    :cond_c
    :goto_6
    return v1
.end method

.method public final x0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->i0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final x1(Ljava/lang/String;Landroid/util/Size;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "mediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$y;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final y0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/ui/chat/chatdetails/z1;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final y1(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->W:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/z1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/z1;->j()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;->EDIT:Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->f0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->z1()Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final z0()I
    .locals 3

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$l;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final z1()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method
