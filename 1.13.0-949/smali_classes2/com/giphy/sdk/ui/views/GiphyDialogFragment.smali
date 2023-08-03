.class public final Lcom/giphy/sdk/ui/views/GiphyDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;,
        Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;,
        Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;,
        Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGiphyDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GiphyDialogFragment.kt\ncom/giphy/sdk/ui/views/GiphyDialogFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1500:1\n1245#2,2:1501\n*E\n*S KotlinDebug\n*F\n+ 1 GiphyDialogFragment.kt\ncom/giphy/sdk/ui/views/GiphyDialogFragment\n*L\n201#1,2:1501\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c7\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0003\u0018,/\u0018\u0000 \u008e\u00022\u00020\u0001:\u0006wz\u008f\u0002\u0090\u0002B\t\u00a2\u0006\u0006\u0008\u008c\u0002\u0010\u008d\u0002J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0008\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0002J&\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0003J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0006H\u0002J\u0008\u0010\u001d\u001a\u00020\u0006H\u0002J\u0008\u0010\u001e\u001a\u00020\u0006H\u0002J\u0008\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u0008\u0010%\u001a\u00020\u0006H\u0002J\u0008\u0010&\u001a\u00020\u0006H\u0002J\u0008\u0010\'\u001a\u00020\u0006H\u0002J\u0008\u0010(\u001a\u00020\u0006H\u0002J\u0008\u0010*\u001a\u00020)H\u0002J\u0008\u0010+\u001a\u00020)H\u0002J\u000f\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0010\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0002J\u0008\u00105\u001a\u00020\u0006H\u0002J\u0010\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u000206H\u0002J\u0010\u0010:\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u000209H\u0002J\u0008\u0010;\u001a\u00020\u0006H\u0002J\u0008\u0010<\u001a\u00020\u0006H\u0002J\u0018\u0010@\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020=H\u0002J\u0008\u0010A\u001a\u00020\u0006H\u0002J\u0008\u0010B\u001a\u00020\u0006H\u0002J\u0008\u0010C\u001a\u00020\u0006H\u0002J\u0008\u0010D\u001a\u00020\u0006H\u0002J\u0018\u0010H\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u000206H\u0002J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u000206H\u0002J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010F\u001a\u00020EH\u0002J\u0010\u0010L\u001a\u00020\u00062\u0006\u0010K\u001a\u00020\u000cH\u0002J\u0012\u0010N\u001a\u00020\u00062\u0008\u0010M\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010Q\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0002J\u0008\u0010R\u001a\u00020\u0006H\u0002J\u0010\u0010S\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0003J\u0008\u0010T\u001a\u00020\u0006H\u0002J\u0008\u0010U\u001a\u00020\u0006H\u0002J\u0010\u0010V\u001a\u00020\u00062\u0006\u0010P\u001a\u00020OH\u0003J\u0008\u0010W\u001a\u00020\u0006H\u0002J\u0008\u0010X\u001a\u00020)H\u0002J\u0008\u0010Y\u001a\u00020)H\u0002J\u0008\u0010Z\u001a\u00020\u0006H\u0002J\u0008\u0010[\u001a\u00020\u0006H\u0002J\u0012\u0010\\\u001a\u00020\u00062\u0008\u0010P\u001a\u0004\u0018\u00010OH\u0002J\u0010\u0010_\u001a\u00020\u00062\u0006\u0010^\u001a\u00020]H\u0016J\u0008\u0010`\u001a\u000206H\u0016J\u0012\u0010c\u001a\u00020\u00062\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0016J$\u0010i\u001a\u00020h2\u0006\u0010e\u001a\u00020d2\u0008\u0010g\u001a\u0004\u0018\u00010f2\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0016J\u001a\u0010k\u001a\u00020\u00062\u0006\u0010j\u001a\u00020h2\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0017J\u0012\u0010m\u001a\u00020l2\u0008\u0010b\u001a\u0004\u0018\u00010aH\u0016J\u0010\u0010p\u001a\u00020\u00062\u0006\u0010o\u001a\u00020nH\u0016J\u0008\u0010q\u001a\u00020\u0006H\u0016J\u0008\u0010r\u001a\u00020\u0006H\u0016J\u0010\u0010t\u001a\u00020\u00062\u0006\u0010s\u001a\u00020aH\u0016J\u0008\u0010u\u001a\u00020\u0006H\u0016J\u0008\u0010v\u001a\u00020\u0006H\u0016R\u0016\u0010y\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0014\u0010|\u001a\u0002068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0014\u0010~\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008}\u0010{R\u0017\u0010\u0080\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010{R\u0016\u0010\u0082\u0001\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010{R\u0016\u0010\u0084\u0001\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010{R\u0018\u0010\u0086\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010{R\u0018\u0010\u0088\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010{R\u0018\u0010\u008a\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010{R\u0018\u0010\u008c\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010{R\u0018\u0010\u008e\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010{R\u0019\u0010\u0091\u0001\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001R7\u0010\u009d\u0001\u001a \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0099\u0001j\u000f\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002`\u009a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u001b\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001a\u0010\u00a4\u0001\u001a\u00030\u00a1\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R\u001a\u0010\u00a8\u0001\u001a\u00030\u00a5\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001a\u0010\u00aa\u0001\u001a\u00030\u00a5\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00a7\u0001R\u001c\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00ab\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001c\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00af\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u001a\u0010\u00b6\u0001\u001a\u00030\u00b3\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001a\u0010\u00ba\u0001\u001a\u00030\u00b7\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001c\u0010\u00be\u0001\u001a\u0005\u0018\u00010\u00bb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u001c\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00bf\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u001b\u0010\u00c5\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R\u001b\u0010\u00c7\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c4\u0001R\u001b\u0010\u00c9\u0001\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00c4\u0001R\u001c\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u00ca\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u001c\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00ce\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u00cf\u0001R\u0018\u0010\u00d4\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001R\u0018\u0010\u00d6\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00d3\u0001R\u0017\u0010\u00d7\u0001\u001a\u00030\u00d1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008{\u0010\u00d3\u0001R$\u0010\u00dc\u0001\u001a\r \u00d9\u0001*\u0005\u0018\u00010\u00d8\u00010\u00d8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00db\u0001R$\u0010\u00de\u0001\u001a\r \u00d9\u0001*\u0005\u0018\u00010\u00d8\u00010\u00d8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00db\u0001R\"\u0010\u00e0\u0001\u001a\r \u00d9\u0001*\u0005\u0018\u00010\u00d8\u00010\u00d8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00db\u0001R\"\u0010\u00e2\u0001\u001a\r \u00d9\u0001*\u0005\u0018\u00010\u00d8\u00010\u00d8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0001\u0010\u00db\u0001R\u0019\u0010\u00e5\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001R\u0018\u00103\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001R\u0019\u0010\u00ea\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u0019\u0010\u00ec\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00eb\u0001\u0010\u00e7\u0001R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u0097\u0001R\u0019\u0010\u00ef\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00e4\u0001R\u0019\u0010\u00f1\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u00e4\u0001R\u001a\u0010\u00f5\u0001\u001a\u00030\u00f2\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R\u0019\u0010\u00f7\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u00e4\u0001R\u001a\u0010\u00fb\u0001\u001a\u00030\u00f8\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0001\u0010\u00fa\u0001R,\u0010\u0083\u0002\u001a\u0005\u0018\u00010\u00fc\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00fd\u0001\u0010\u00fe\u0001\u001a\u0006\u0008\u00ff\u0001\u0010\u0080\u0002\"\u0006\u0008\u0081\u0002\u0010\u0082\u0002R\u0018\u0010\u0084\u0002\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000e\u0010\u00e4\u0001R,\u0010\u0086\u0002\u001a\u0005\u0018\u00010\u0085\u00028\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0002\u0010\u0087\u0002\u001a\u0006\u0008\u0088\u0002\u0010\u0089\u0002\"\u0006\u0008\u008a\u0002\u0010\u008b\u0002\u00a8\u0006\u0091\u0002"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "query",
        "",
        "shouldPerformSearch",
        "",
        "k2",
        "N1",
        "J1",
        "m2",
        "",
        "Lcom/giphy/sdk/ui/h;",
        "suggestions",
        "g1",
        "F1",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;",
        "state",
        "n2",
        "i2",
        "username",
        "O1",
        "W1",
        "V1",
        "com/giphy/sdk/ui/views/GiphyDialogFragment$m",
        "y1",
        "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;",
        "a2",
        "U1",
        "Z1",
        "Y1",
        "X1",
        "",
        "drag",
        "f1",
        "l1",
        "k1",
        "B1",
        "j1",
        "i1",
        "h1",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "z1",
        "x1",
        "com/giphy/sdk/ui/views/GiphyDialogFragment$k",
        "w1",
        "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;",
        "com/giphy/sdk/ui/views/GiphyDialogFragment$j",
        "u1",
        "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;",
        "Lcom/giphy/sdk/ui/GPHContentType;",
        "contentType",
        "n1",
        "S1",
        "",
        "resultsCount",
        "j2",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;",
        "T1",
        "r1",
        "P1",
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;",
        "oldLayoutType",
        "newLayoutType",
        "m1",
        "f2",
        "e2",
        "h2",
        "g2",
        "Lcom/giphy/sdk/ui/universallist/g;",
        "itemData",
        "position",
        "H1",
        "G1",
        "L1",
        "item",
        "K1",
        "mediaId",
        "I1",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "q1",
        "o1",
        "b2",
        "C1",
        "p1",
        "d2",
        "E1",
        "s1",
        "A1",
        "c2",
        "D1",
        "M1",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "getTheme",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "onPause",
        "onResume",
        "outState",
        "onSaveInstanceState",
        "onDestroyView",
        "onDestroy",
        "a",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;",
        "keyboardState",
        "b",
        "I",
        "textSpanCount",
        "c",
        "showMediaScrollThreshold",
        "d",
        "mediaSelectorHeight",
        "e",
        "suggestionsHeight",
        "f",
        "fragmentElevation",
        "g",
        "searchBarMarginTop",
        "h",
        "searchBarMarginBottom",
        "i",
        "marginBottom",
        "j",
        "searchBarMargin",
        "k",
        "fullBaseViewHeight",
        "l",
        "F",
        "verticalDrag",
        "Lcom/giphy/sdk/ui/GPHSettings;",
        "m",
        "Lcom/giphy/sdk/ui/GPHSettings;",
        "giphySettings",
        "n",
        "Ljava/lang/String;",
        "giphyApiKey",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "o",
        "Ljava/util/HashMap;",
        "metadata",
        "p",
        "Ljava/lang/Boolean;",
        "giphyVerificationMode",
        "Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;",
        "q",
        "Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;",
        "containerView",
        "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;",
        "r",
        "Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;",
        "baseView",
        "s",
        "baseViewOverlay",
        "Lcom/giphy/sdk/ui/views/GiphySearchBar;",
        "t",
        "Lcom/giphy/sdk/ui/views/GiphySearchBar;",
        "searchBar",
        "Landroid/widget/ImageView;",
        "u",
        "Landroid/widget/ImageView;",
        "searchBackButton",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "v",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "searchBarContainer",
        "Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;",
        "w",
        "Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;",
        "gifsRecyclerView",
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView;",
        "x",
        "Lcom/giphy/sdk/ui/views/GPHMediaTypeView;",
        "mediaSelectorView",
        "Lcom/giphy/sdk/ui/views/h;",
        "y",
        "Lcom/giphy/sdk/ui/views/h;",
        "suggestionsView",
        "z",
        "Landroid/view/View;",
        "suggestionsPlaceholderView",
        "A",
        "attributionView",
        "C",
        "videoAttributionView",
        "Lcom/giphy/sdk/ui/views/k;",
        "E",
        "Lcom/giphy/sdk/ui/views/k;",
        "videoPlayer",
        "Lcom/giphy/sdk/ui/views/c;",
        "Lcom/giphy/sdk/ui/views/c;",
        "giphyActionsView",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "G",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "containerConstraints",
        "H",
        "resultsConstraints",
        "searchBarConstrains",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "J",
        "Landroid/animation/ValueAnimator;",
        "translateAnimator",
        "K",
        "openAnimator",
        "L",
        "attributionAnimator",
        "M",
        "videoAttributionAnimator",
        "N",
        "Z",
        "gifDelivered",
        "O",
        "Lcom/giphy/sdk/ui/GPHContentType;",
        "P",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;",
        "textState",
        "Q",
        "browseContentType",
        "R",
        "S",
        "isAttributionVisible",
        "T",
        "isVideoAttributionVisible",
        "Lcom/giphy/sdk/ui/j;",
        "U",
        "Lcom/giphy/sdk/ui/j;",
        "gphSuggestions",
        "V",
        "canShowSuggestions",
        "Lcom/giphy/sdk/ui/g;",
        "W",
        "Lcom/giphy/sdk/ui/g;",
        "recentSearches",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;",
        "b1",
        "Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;",
        "v1",
        "()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;",
        "R1",
        "(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;)V",
        "gifSelectionListener",
        "keepModelData",
        "Lh2/b;",
        "attributionViewBinding",
        "Lh2/b;",
        "t1",
        "()Lh2/b;",
        "Q1",
        "(Lh2/b;)V",
        "<init>",
        "()V",
        "x2",
        "GiphyTextState",
        "KeyboardState",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final T1:Ljava/lang/String; = "gph_giphy_verification_mode"

.field private static final V1:Ljava/lang/String; = "key_screen_change"

.field private static final b2:Ljava/lang/String; = "key_media_type"

.field public static final g2:Ljava/lang/String; = "gph_media"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final p1:Ljava/lang/String; = "gph_giphy_settings"

.field public static final p2:Ljava/lang/String; = "gph_search_term"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final x1:Ljava/lang/String; = "gph_giphy_api_key"

.field public static final x2:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final y1:Ljava/lang/String; = "gph_giphy_metadata_key"


# instance fields
.field private A:Landroid/view/View;

.field private B:Lh2/b;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private C:Landroid/view/View;

.field private D:Lh2/q;

.field private E:Lcom/giphy/sdk/ui/views/k;

.field private F:Lcom/giphy/sdk/ui/views/c;

.field private final G:Landroidx/constraintlayout/widget/ConstraintSet;

.field private final H:Landroidx/constraintlayout/widget/ConstraintSet;

.field private final I:Landroidx/constraintlayout/widget/ConstraintSet;

.field private J:Landroid/animation/ValueAnimator;

.field private K:Landroid/animation/ValueAnimator;

.field private final L:Landroid/animation/ValueAnimator;

.field private final M:Landroid/animation/ValueAnimator;

.field private N:Z

.field private O:Lcom/giphy/sdk/ui/GPHContentType;

.field private P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

.field private Q:Lcom/giphy/sdk/ui/GPHContentType;

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Z

.field private U:Lcom/giphy/sdk/ui/j;

.field private V:Z

.field private W:Lcom/giphy/sdk/ui/g;

.field private a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

.field private final b:I

.field private b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private g1:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:Lcom/giphy/sdk/ui/GPHSettings;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;

.field private q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

.field private r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

.field private s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

.field private t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

.field private u:Landroid/widget/ImageView;

.field private v:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

.field private x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

.field private y:Lcom/giphy/sdk/ui/views/h;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x2:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->CLOSED:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b:I

    const/16 v1, 0x1e

    .line 4
    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v1

    iput v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->c:I

    const/16 v1, 0x2e

    .line 5
    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v2

    iput v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d:I

    .line 6
    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v1

    iput v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->e:I

    const/4 v1, 0x6

    .line 7
    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v1

    iput v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f:I

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o:Ljava/util/HashMap;

    .line 9
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 11
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    const/4 v1, 0x0

    new-array v2, v1, [F

    .line 12
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    .line 13
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 14
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    .line 16
    sget-object v0, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 17
    sget-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    .line 18
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Q:Lcom/giphy/sdk/ui/GPHContentType;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic A0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/universallist/g;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H1(Lcom/giphy/sdk/ui/universallist/g;I)V

    return-void
.end method

.method private final A1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$o;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$o;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic B0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I1(Ljava/lang/String;)V

    return-void
.end method

.method private final B1()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    iget v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    int-to-float v2, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j1()V

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    mul-float v2, v2, v3

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    int-to-float v2, v1

    mul-float v2, v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i1()V

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic C0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J1(Ljava/lang/String;)V

    return-void
.end method

.method private final C1()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S:Z

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/giphy/sdk/ui/views/GifView;->J(Lcom/giphy/sdk/ui/views/GifView;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_1
    return-void
.end method

.method public static final synthetic D0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K1(Lcom/giphy/sdk/ui/h;)V

    return-void
.end method

.method private final declared-synchronized D1()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final synthetic E0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/universallist/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L1(Lcom/giphy/sdk/ui/universallist/g;)V

    return-void
.end method

.method private final E1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->T:Z

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->W()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_1
    return-void
.end method

.method public static final synthetic F0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/core/models/Media;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M1(Lcom/giphy/sdk/core/models/Media;)V

    return-void
.end method

.method private final F1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m2()V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 4
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic G0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->N1(Ljava/lang/String;)V

    return-void
.end method

.method private final G1(Lcom/giphy/sdk/ui/universallist/g;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Gif:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicText:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->DynamicTextWithMoreByYou:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->Video:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-ne v0, v1, :cond_7

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_1

    const-string v1, "gifsRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/giphy/sdk/core/models/Media;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    check-cast v0, Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/views/c;->j(Lcom/giphy/sdk/core/models/Media;)V

    .line 4
    :cond_4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/c;->n(Z)V

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public static final synthetic H0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O1(Ljava/lang/String;)V

    return-void
.end method

.method private final H1(Lcom/giphy/sdk/ui/universallist/g;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/giphy/sdk/core/models/Media;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lcom/giphy/sdk/core/models/Media;

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    sget-object v2, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/giphy/sdk/core/models/Media;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;)V

    .line 5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F1()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/giphy/sdk/core/models/Media;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    check-cast v1, Lcom/giphy/sdk/core/models/Media;

    if-eqz v1, :cond_8

    .line 7
    invoke-static {v1}, Lcom/giphy/sdk/tracking/f;->f(Lcom/giphy/sdk/core/models/Media;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d2(Lcom/giphy/sdk/core/models/Media;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string p2, "giphySettings"

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getShowConfirmationScreen()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p1

    sget-object p2, Lcom/giphy/sdk/ui/themes/GridType;->carousel:Lcom/giphy/sdk/ui/themes/GridType;

    if-eq p1, p2, :cond_6

    .line 10
    invoke-direct {p0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b2(Lcom/giphy/sdk/core/models/Media;)V

    goto :goto_1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_7

    const-string p2, "gifsRecyclerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object p1

    sget-object p2, Lcom/giphy/sdk/analytics/models/enums/ActionType;->CLICK:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    invoke-virtual {p1, v1, p2}, Lcom/giphy/sdk/tracking/d;->x(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/ActionType;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q1(Lcom/giphy/sdk/core/models/Media;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static final synthetic I0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    return-void
.end method

.method private final I1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->l()Lcom/giphy/sdk/ui/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/o;->e(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_0

    const-string v0, "gifsRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getRecents()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->C(Lcom/giphy/sdk/ui/pagination/GPHContent;)V

    :cond_1
    return-void
.end method

.method public static final synthetic J0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S:Z

    return-void
.end method

.method private final J1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic K0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    return-void
.end method

.method private final K1(Lcom/giphy/sdk/ui/h;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/h;->f()Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Text:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;)V

    .line 3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F1()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W:Lcom/giphy/sdk/ui/g;

    if-nez v0, :cond_1

    const-string v1, "recentSearches"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/g;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/h;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->setText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final synthetic L0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    return-void
.end method

.method private final L1(Lcom/giphy/sdk/ui/universallist/g;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/universallist/SmartItemType;->UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/giphy/sdk/core/models/User;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/giphy/sdk/core/models/User;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v0, :cond_1

    const-string v1, "baseViewOverlay"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    sget-object v0, Lcom/giphy/sdk/ui/views/s;->f:Lcom/giphy/sdk/ui/views/s$a;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/views/s$a;->a(Lcom/giphy/sdk/core/models/User;)Lcom/giphy/sdk/ui/views/s;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$r;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$r;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/s;->Z(Lcom/giphy/sdk/ui/views/t;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "user_profile_info"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static final synthetic M0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->V:Z

    return-void
.end method

.method private final M1(Lcom/giphy/sdk/core/models/Media;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/utils/d;->a:Lcom/giphy/sdk/ui/utils/d;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/utils/d;->c(Lcom/giphy/sdk/core/models/Media;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static final synthetic N0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;I)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    return-void
.end method

.method private final N1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic O0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    return-void
.end method

.method private final O1(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static final synthetic P0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/c;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    return-void
.end method

.method private final P1()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "releaseFocus"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->c(Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic Q0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/GPHSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    return-void
.end method

.method public static final synthetic R0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->T1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V

    return-void
.end method

.method public static final synthetic S0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    return-void
.end method

.method private final S1()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setGridTypeFromContentType"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v2, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$6:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string v3, "giphySettings"

    const-string v4, "gifsRecyclerView"

    if-eq v1, v2, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1, v2, v3, v5}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->B(Lcom/giphy/sdk/ui/themes/GridType;Ljava/lang/Integer;Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/universallist/e$a;->s(Z)V

    goto :goto_1

    .line 5
    :cond_3
    sget-object v0, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getStickerColumnCount()I

    move-result v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v5, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1, v3, v0, v5}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->B(Lcom/giphy/sdk/ui/themes/GridType;Ljava/lang/Integer;Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/universallist/e$a;->s(Z)V

    :goto_1
    return-void
.end method

.method public static final synthetic T0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final T1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->setKeyboardState(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    sget-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->OPEN:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r1()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P1()V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m2()V

    return-void
.end method

.method public static final synthetic U(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f1(F)V

    return-void
.end method

.method public static final synthetic U0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    return-void
.end method

.method private final U1()V
    .locals 11

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/views/GiphySearchBar;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v2, "baseView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "baseView.context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Li2/e;)V

    .line 2
    sget v1, Lcom/giphy/sdk/ui/p$j;->H2:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 6
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "searchBarContainer"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v0, v1, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v6, 0x6

    .line 10
    invoke-virtual {v0, v1, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 12
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v7, 0x7

    .line 13
    invoke-virtual {v0, v1, v7, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 14
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 15
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    const-string v8, "gifsRecyclerView"

    if-nez v1, :cond_4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 16
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v9, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    const/4 v10, 0x3

    .line 17
    invoke-virtual {v0, v1, v4, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 19
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 20
    invoke-virtual {v0, v1, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 21
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 22
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 23
    invoke-virtual {v0, v1, v7, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 24
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v1, :cond_8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/giphy/sdk/ui/p$g;->y2:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 27
    invoke-virtual {v0, v1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 28
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 29
    iget-object v8, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 30
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    .line 31
    invoke-virtual {v8, v9, v10, v5, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 32
    iget-object v8, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    .line 34
    invoke-virtual {v8, v9, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 35
    iget-object v8, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    .line 37
    invoke-virtual {v8, v9, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 38
    iget-object v6, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    .line 40
    invoke-virtual {v6, v8, v7, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 41
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 42
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    iget v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    invoke-virtual {v5, v6, v10, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 43
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget v6, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 44
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x50

    .line 45
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v4, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 48
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v4, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$5:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v1, :cond_d

    const/4 v1, 0x2

    if-eq v2, v1, :cond_c

    if-eq v2, v10, :cond_b

    .line 49
    sget v1, Lcom/giphy/sdk/ui/p$o;->m1:I

    goto :goto_0

    .line 50
    :cond_b
    sget v1, Lcom/giphy/sdk/ui/p$o;->p1:I

    goto :goto_0

    .line 51
    :cond_c
    sget v1, Lcom/giphy/sdk/ui/p$o;->o1:I

    goto :goto_0

    .line 52
    :cond_d
    sget v1, Lcom/giphy/sdk/ui/p$o;->n1:I

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 54
    :cond_e
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic V(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic V0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/GiphySearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    return-void
.end method

.method private final V1()V
    .locals 5

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/views/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/giphy/sdk/ui/views/GPHActions;

    sget-object v3, Lcom/giphy/sdk/ui/views/GPHActions;->SearchMore:Lcom/giphy/sdk/ui/views/GPHActions;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/giphy/sdk/ui/views/GPHActions;->OpenGiphy:Lcom/giphy/sdk/ui/views/GPHActions;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/giphy/sdk/ui/views/c;-><init>(Landroid/content/Context;[Lcom/giphy/sdk/ui/views/GPHActions;)V

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    .line 2
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$z;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$z;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/c;->l(Lkotlin/jvm/functions/Function1;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$a0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/c;->k(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public static final synthetic W(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k1(F)V

    return-void
.end method

.method public static final synthetic W0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/h;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    return-void
.end method

.method private final W1()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string v1, "giphySettings"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v0

    sget-object v2, Lcom/giphy/sdk/ui/themes/GridType;->waterfall:Lcom/giphy/sdk/ui/themes/GridType;

    const-string v3, "gifsRecyclerView"

    if-ne v0, v2, :cond_5

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getClipsPreviewRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setClipsPreviewRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 6
    :cond_6
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v4, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$4:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    .line 7
    sget-object v2, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/GPHContentType;->getMediaType()Lcom/giphy/sdk/core/models/enums/MediaType;

    move-result-object v4

    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v5, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5}, Lcom/giphy/sdk/ui/GPHSettings;->getRating()Lcom/giphy/sdk/core/models/enums/RatingType;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->trending(Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_8
    sget-object v1, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getRecents()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_9
    sget-object v1, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getEmoji()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->C(Lcom/giphy/sdk/ui/pagination/GPHContent;)V

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setOnResultsUpdateListener(Lkotlin/jvm/functions/Function1;)V

    .line 12
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$c0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$c0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setOnItemSelectedListener(Lkotlin/jvm/functions/Function2;)V

    .line 13
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setOnItemLongPressListener(Lkotlin/jvm/functions/Function2;)V

    .line 14
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->setOnUserProfileInfoPressListener(Lkotlin/jvm/functions/Function1;)V

    .line 15
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static final synthetic X(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l1(F)V

    return-void
.end method

.method public static final synthetic X0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;F)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    return-void
.end method

.method private final X1()V
    .locals 6

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string v5, "giphySettings"

    if-nez v4, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;-><init>(Landroid/content/Context;Li2/e;[Lcom/giphy/sdk/ui/GPHContentType;)V

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    .line 2
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 3
    sget v1, Lcom/giphy/sdk/ui/p$j;->F2:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 4
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$f0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$f0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setMediaConfigListener(Lkotlin/jvm/functions/Function1;)V

    .line 5
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$g0;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$g0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setLayoutTypeListener(Lkotlin/jvm/functions/Function2;)V

    .line 6
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 7
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v1, :cond_1

    const-string v3, "baseView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v3, 0x6

    .line 14
    invoke-virtual {v1, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v3, 0x7

    .line 17
    invoke-virtual {v1, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x2e

    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d:I

    .line 19
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d:I

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    return-void
.end method

.method public static final synthetic Y(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m1(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V

    return-void
.end method

.method public static final synthetic Y0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C:Landroid/view/View;

    return-void
.end method

.method private final Y1()V
    .locals 10

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/views/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v2

    new-instance v3, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$h0;

    invoke-direct {v3, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$h0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/giphy/sdk/ui/views/h;-><init>(Landroid/content/Context;Li2/e;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    .line 2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->z:Landroid/view/View;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    .line 3
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->z:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 4
    aget-object v4, v1, v2

    .line 5
    sget-object v5, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v5}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v5

    invoke-virtual {v5}, Li2/e;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/giphy/sdk/ui/p$j;->L2:I

    goto :goto_1

    :cond_0
    sget v5, Lcom/giphy/sdk/ui/p$j;->K2:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 7
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v5, :cond_1

    const-string v6, "searchBarContainer"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    .line 10
    iget-object v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v5, v6, v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, 0x6

    .line 14
    invoke-virtual {v5, v6, v7, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, 0x7

    .line 17
    invoke-virtual {v5, v6, v7, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    .line 20
    invoke-virtual {v5, v6, v9, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 21
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    .line 23
    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 24
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    .line 26
    iget-object v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->e:I

    goto :goto_2

    :cond_2
    iget v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h:I

    .line 27
    :goto_2
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 28
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 29
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    .line 31
    iget v7, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    div-int/2addr v7, v0

    .line 32
    invoke-virtual {v5, v6, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 33
    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    .line 35
    iget v6, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    div-int/2addr v6, v0

    .line 36
    invoke-virtual {v5, v4, v9, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static final synthetic Z(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n1(Lcom/giphy/sdk/ui/GPHContentType;)V

    return-void
.end method

.method public static final synthetic Z0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->T:Z

    return-void
.end method

.method private final Z1()V
    .locals 14

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setupWaterfallView"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphySearchBar;

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v3, "baseView"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "baseView.context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v4}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/giphy/sdk/ui/views/GiphySearchBar;-><init>(Landroid/content/Context;Li2/e;)V

    .line 3
    sget v2, Lcom/giphy/sdk/ui/p$j;->H2:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    .line 6
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 7
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "searchBarContainer"

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v6, 0x3

    .line 8
    invoke-virtual {v1, v2, v6, v0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 10
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v7, 0x6

    .line 11
    invoke-virtual {v1, v2, v7, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 13
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    const/4 v8, 0x7

    .line 14
    invoke-virtual {v1, v2, v8, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->X1()V

    .line 16
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 17
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    const-string v9, "gifsRecyclerView"

    if-nez v2, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 18
    iget-object v10, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v10, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getId()I

    move-result v10

    const/4 v11, 0x4

    .line 19
    invoke-virtual {v1, v2, v6, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 20
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 21
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v2, :cond_6

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 22
    iget-object v10, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getId()I

    move-result v10

    .line 23
    invoke-virtual {v1, v2, v11, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 24
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 25
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v2, :cond_7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 26
    invoke-virtual {v1, v2, v7, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 27
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 28
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v2, :cond_8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 29
    invoke-virtual {v1, v2, v8, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 30
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    sget v2, Lcom/giphy/sdk/ui/p$h;->o2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    sget v2, Lcom/giphy/sdk/ui/p$j;->D2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 33
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    invoke-virtual {v4}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v2

    invoke-virtual {v2}, Li2/e;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 35
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 36
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    .line 37
    invoke-virtual {v2, v9, v6, v0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 38
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 39
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    .line 40
    invoke-virtual {v2, v9, v7, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 41
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 42
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    .line 43
    invoke-virtual {v2, v9, v8, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 44
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    iget v10, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    invoke-virtual {v2, v9, v6, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 45
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    const/16 v10, 0x14

    invoke-virtual {v2, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 46
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v9

    const/16 v10, 0xfa

    invoke-virtual {v2, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 47
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->u:Landroid/widget/ImageView;

    .line 48
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v9, :cond_9

    new-instance v10, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;

    invoke-direct {v10, v2, p0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;-><init>(Landroid/widget/ImageView;Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_a

    sget v10, Lcom/giphy/sdk/ui/p$o;->M0:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_a
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    sget v9, Lcom/giphy/sdk/ui/p$h;->r2:I

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    sget v9, Lcom/giphy/sdk/ui/p$j;->g3:I

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 52
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    invoke-virtual {v4}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v4

    invoke-virtual {v4}, Li2/e;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 54
    new-instance v4, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j0;

    invoke-direct {v4, p0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    const/4 v10, -0x2

    invoke-virtual {v4, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 56
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    invoke-virtual {v4, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 57
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 58
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    .line 59
    invoke-virtual {v4, v9, v7, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 60
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 61
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    .line 62
    iget v12, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j:I

    mul-int/lit8 v12, v12, 0x2

    .line 63
    invoke-virtual {v4, v9, v7, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 64
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    iget v12, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j:I

    invoke-virtual {v4, v9, v8, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 65
    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v4, :cond_b

    .line 66
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 67
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v12

    .line 68
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v13

    .line 69
    invoke-virtual {v9, v12, v6, v13, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 70
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 71
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v12

    .line 72
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v13

    .line 73
    invoke-virtual {v9, v12, v11, v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 74
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 75
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v12

    .line 76
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v13

    .line 77
    invoke-virtual {v9, v12, v8, v13, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 78
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 79
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v12

    .line 80
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v13

    .line 81
    invoke-virtual {v9, v12, v6, v13, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 82
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 83
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v12

    .line 84
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v13

    .line 85
    invoke-virtual {v9, v12, v7, v13, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 86
    iget-object v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 87
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v12

    .line 88
    invoke-virtual {v9, v12, v8, v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 89
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 90
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    const/4 v12, 0x1

    .line 91
    invoke-virtual {v0, v9, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 92
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v9

    iget v12, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    invoke-virtual {v0, v9, v6, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 93
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 94
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    .line 95
    iget v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h:I

    .line 96
    invoke-virtual {v0, v6, v11, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 97
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    iget v9, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j:I

    invoke-virtual {v0, v6, v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 98
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    iget v6, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j:I

    invoke-virtual {v0, v4, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v1, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 100
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Y1()V

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 104
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic a0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o1()V

    return-void
.end method

.method public static final synthetic a1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/views/k;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    return-void
.end method

.method private final a2()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_1

    const-string v1, "giphySettings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getShowSuggestionsBar()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    sget-object v2, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    if-eq v1, v2, :cond_4

    :cond_2
    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->clips:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final synthetic b0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/core/models/Media;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q1(Lcom/giphy/sdk/core/models/Media;)V

    return-void
.end method

.method public static final synthetic b1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->V1()V

    return-void
.end method

.method private final b2(Lcom/giphy/sdk/core/models/Media;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S:Z

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v1, :cond_7

    .line 3
    iget-object v2, v1, Lh2/b;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "it.gphChannelView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v1, Lh2/b;->m:Landroid/widget/ImageView;

    const-string v6, "it.verifiedBadge"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getVerified()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v3, v1, Lh2/b;->c:Lcom/giphy/sdk/ui/views/GifView;

    .line 7
    sget-object v4, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a:Lcom/giphy/sdk/ui/utils/AvatarUtils;

    .line 8
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    .line 9
    sget-object v7, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Medium:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    .line 10
    invoke-virtual {v4, v6, v7}, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a(Ljava/lang/String;Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Lcom/giphy/sdk/ui/views/GifView;->v(Ljava/lang/String;)V

    .line 12
    iget-object v3, v1, Lh2/b;->d:Landroid/widget/TextView;

    const-string v4, "it.channelName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/giphy/sdk/tracking/f;->d(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v0, v1, Lh2/b;->k:Landroid/widget/Button;

    sget v2, Lcom/giphy/sdk/ui/p$o;->O0:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 15
    iget-object v0, v1, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0, v5}, Lcom/giphy/sdk/ui/views/GifView;->setBackgroundVisible(Z)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->isSticker()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, v1, Lh2/b;->k:Landroid/widget/Button;

    sget v3, Lcom/giphy/sdk/ui/p$o;->Q0:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 18
    iget-object v2, v1, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v2, v0}, Lcom/giphy/sdk/ui/views/GifView;->setBackgroundVisible(Z)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, v1, Lh2/b;->k:Landroid/widget/Button;

    sget v2, Lcom/giphy/sdk/ui/p$o;->P0:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 20
    iget-object v0, v1, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0, v5}, Lcom/giphy/sdk/ui/views/GifView;->setBackgroundVisible(Z)V

    .line 21
    :goto_1
    iget-object v0, v1, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    if-eqz v0, :cond_7

    .line 22
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v1, :cond_5

    const-string v2, "giphySettings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/giphy/sdk/ui/GPHSettings;->getConfirmationRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->original:Lcom/giphy/sdk/core/models/enums/RenditionType;

    :goto_2
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, p1, v1, v2}, Lcom/giphy/sdk/ui/views/GifView;->I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->h()V

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_9

    const-string v0, "gifsRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/tracking/d;->r()V

    return-void
.end method

.method public static final synthetic c0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic c1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W1()V

    return-void
.end method

.method private final declared-synchronized c2()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->V:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a2()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_3
    monitor-exit p0

    return-void

    .line 5
    :cond_4
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final synthetic d0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;
    .locals 1

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p0, :cond_0

    const-string v0, "baseView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->c2()V

    return-void
.end method

.method private final d2(Lcom/giphy/sdk/core/models/Media;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->p1()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->T:Z

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v1, :cond_5

    .line 5
    iget-object v2, v1, Lh2/q;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "it.gphChannelView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getUser()Lcom/giphy/sdk/core/models/User;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, v1, Lh2/q;->m:Landroid/widget/ImageView;

    const-string v6, "it.verifiedBadge"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getVerified()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v3, v1, Lh2/q;->c:Lcom/giphy/sdk/ui/views/GifView;

    .line 9
    sget-object v4, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a:Lcom/giphy/sdk/ui/utils/AvatarUtils;

    .line 10
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    .line 11
    sget-object v6, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Medium:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a(Ljava/lang/String;Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Lcom/giphy/sdk/ui/views/GifView;->v(Ljava/lang/String;)V

    .line 14
    iget-object v3, v1, Lh2/q;->d:Landroid/widget/TextView;

    const-string v4, "it.channelName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_3
    iget-object v2, v1, Lh2/q;->k:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v2, p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->t(Lcom/giphy/sdk/core/models/Media;)V

    .line 16
    iget-object v2, v1, Lh2/q;->j:Landroid/widget/Button;

    sget v3, Lcom/giphy/sdk/ui/p$o;->N0:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 17
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/views/k;->W()V

    .line 18
    :cond_4
    new-instance v3, Lcom/giphy/sdk/ui/views/k;

    iget-object v1, v1, Lh2/q;->k:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-direct {v3, v1, v0}, Lcom/giphy/sdk/ui/views/k;-><init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V

    iput-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v4, p1

    .line 19
    invoke-static/range {v3 .. v9}, Lcom/giphy/sdk/ui/views/k;->V(Lcom/giphy/sdk/ui/views/k;Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->h()V

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 22
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_7

    const-string v0, "gifsRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/tracking/d;->r()V

    return-void
.end method

.method public static final synthetic e0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;
    .locals 1

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p0, :cond_0

    const-string v0, "baseViewOverlay"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic e1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j2(I)V

    return-void
.end method

.method private final e2()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "transitionBackToSearchFocus"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    return-void
.end method

.method public static final synthetic f0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->V:Z

    return p0
.end method

.method private final f1(F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accumulateDrag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    const/4 p1, 0x0

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    .line 4
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k1(F)V

    return-void
.end method

.method private final f2()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "transitionForwardToSearchFocus"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Q:Lcom/giphy/sdk/ui/GPHContentType;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Q:Lcom/giphy/sdk/ui/GPHContentType;

    .line 4
    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->emoji:Lcom/giphy/sdk/ui/GPHContentType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    const-string v0, ""

    .line 8
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static final synthetic g0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    return p0
.end method

.method private final g1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/h;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string v1, "giphySettings"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getEnableDynamicText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    .line 5
    invoke-static {p2}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    :goto_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v1, Lcom/giphy/sdk/ui/h;

    sget-object v2, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Text:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-direct {v1, v2, p2}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    return-object p1
.end method

.method private final g2()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "transitionFromFocusToBrowse"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Q:Lcom/giphy/sdk/ui/GPHContentType;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    iput-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 6
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final synthetic h0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;
    .locals 1

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p0, :cond_0

    const-string v0, "gifsRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final h1()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "animateToClose"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    aput v3, v2, v0

    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    int-to-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->u1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final h2()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "transitionFromResultsToBrowse"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Q:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->setGphContentType(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic i0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/c;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->F:Lcom/giphy/sdk/ui/views/c;

    return-object p0
.end method

.method private final i1()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "animateToHalf"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    aput v3, v2, v0

    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    int-to-float v0, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v0, v0, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final i2(Ljava/lang/String;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m2()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "giphySettings"

    const-string v3, "gifsRecyclerView"

    if-eqz v1, :cond_6

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v3, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$3:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    .line 6
    sget-object v0, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/GPHContentType;->getMediaType()Lcom/giphy/sdk/core/models/enums/MediaType;

    move-result-object v1

    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lcom/giphy/sdk/ui/GPHSettings;->getRating()Lcom/giphy/sdk/core/models/enums/RatingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->trending(Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_4
    sget-object v0, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getRecents()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_5
    sget-object v0, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getEmoji()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    .line 9
    :goto_2
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->C(Lcom/giphy/sdk/ui/pagination/GPHContent;)V

    goto :goto_4

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    sget-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    if-ne v0, v1, :cond_8

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    :cond_7
    sget-object v1, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    invoke-virtual {v1, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->animate(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->C(Lcom/giphy/sdk/ui/pagination/GPHContent;)V

    goto :goto_3

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    :cond_9
    sget-object v1, Lcom/giphy/sdk/ui/pagination/GPHContent;->n:Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;

    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/GPHContentType;->getMediaType()Lcom/giphy/sdk/core/models/enums/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v4, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Lcom/giphy/sdk/ui/GPHSettings;->getRating()Lcom/giphy/sdk/core/models/enums/RatingType;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->searchQuery(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->C(Lcom/giphy/sdk/ui/pagination/GPHContent;)V

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;->c(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static final synthetic j0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/GPHSettings;
    .locals 1

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez p0, :cond_0

    const-string v0, "giphySettings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final j1()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "animateToOpen"

    .line 1
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    aput v3, v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final j2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->g()V

    :cond_2
    if-lez p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez p1, :cond_3

    const-string v0, "gifsRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    :goto_2
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;)V

    return-void
.end method

.method public static final synthetic k0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    return-object p0
.end method

.method private final k1(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    const-string v1, "baseView"

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k:I

    .line 3
    :cond_1
    iput p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method private final k2(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    xor-int/2addr v2, v1

    .line 2
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->u:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_3
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v3, Lcom/giphy/sdk/ui/GPHContentType;->emoji:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v2, v3, :cond_4

    .line 4
    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    .line 6
    :cond_4
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v3, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    sget-object v3, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->create:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    if-ne v2, v3, :cond_7

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    if-eqz p2, :cond_8

    .line 7
    :cond_7
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_a

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_d

    .line 9
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    sget-object p2, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->OPEN:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    if-ne p1, p2, :cond_b

    .line 10
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r1()V

    .line 11
    :cond_b
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    if-ne v2, p2, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->e(Z)V

    :cond_d
    return-void
.end method

.method public static final synthetic l0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final l1(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v0, :cond_0

    const-string v1, "baseView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method static synthetic l2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->k2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic m0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    return-object p0
.end method

.method private final m1(Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeLayoutType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;->browse:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;->searchFocus:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    if-ne p2, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f2()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;->searchResults:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h2()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;->searchFocus:Lcom/giphy/sdk/ui/views/GPHMediaTypeView$LayoutType;

    if-ne p1, v2, :cond_2

    if-ne p2, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g2()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->e2()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final m2()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D1()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    sget-object v3, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->OPEN:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    sget-object v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;->CLOSED:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$KeyboardState;

    if-ne v0, v1, :cond_6

    .line 5
    sget-object v0, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Trending:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    goto :goto_3

    .line 6
    :cond_6
    sget-object v0, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Channels:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    goto :goto_3

    .line 7
    :cond_7
    :goto_2
    sget-object v0, Lcom/giphy/sdk/ui/GPHSearchSuggestionType;->Recents:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    :goto_3
    move-object v2, v0

    .line 8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, ""

    :goto_4
    move-object v3, v0

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->U:Lcom/giphy/sdk/ui/j;

    if-nez v1, :cond_9

    const-string v0, "gphSuggestions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x0

    new-instance v5, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;

    invoke-direct {v5, p0, v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/giphy/sdk/ui/i$a;->a(Lcom/giphy/sdk/ui/i;Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic n0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphySearchBar;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    return-object p0
.end method

.method private final n1(Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "changeMediaType"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;->search:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;)V

    .line 3
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 4
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S1()V

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i2(Ljava/lang/String;)V

    return-void
.end method

.method private final n2(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->P:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$GiphyTextState;

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p1, :cond_2

    sget v0, Lcom/giphy/sdk/ui/p$h;->M2:I

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p1, :cond_2

    sget v0, Lcom/giphy/sdk/ui/p$h;->R2:I

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->l(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic o0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->c:I

    return p0
.end method

.method private final o1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v2, "baseView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v3}, Lh2/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lh2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lh2/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_4

    const-string v1, "giphySettings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->carousel:Lcom/giphy/sdk/ui/themes/GridType;

    const/4 v4, -0x1

    if-ne v0, v1, :cond_6

    .line 7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez v0, :cond_5

    const-string v1, "containerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    .line 9
    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 10
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    .line 13
    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v4, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 15
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    const-string v1, "attributionAnimator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lh2/b;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$c;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$c;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_9
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lh2/b;->k:Landroid/widget/Button;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lh2/b;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_b

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$e;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_b
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    if-eqz v0, :cond_c

    .line 21
    iget-object v1, v0, Lh2/b;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 22
    iget-object v1, v0, Lh2/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 23
    iget-object v1, v0, Lh2/b;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v1, v0, Lh2/b;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v0, v0, Lh2/b;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    return-void
.end method

.method public static final synthetic p0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/h;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y:Lcom/giphy/sdk/ui/views/h;

    return-object p0
.end method

.method private final p1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v2, "baseView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v3}, Lh2/q;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lh2/q;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lh2/q;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C:Landroid/view/View;

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 9
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    const-string v1, "videoAttributionAnimator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lh2/q;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$f;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$f;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lh2/q;->j:Landroid/widget/Button;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$g;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$g;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lh2/q;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$h;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$h;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D:Lh2/q;

    if-eqz v0, :cond_9

    .line 16
    iget-object v1, v0, Lh2/q;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 17
    iget-object v1, v0, Lh2/q;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 18
    iget-object v1, v0, Lh2/q;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object v1, v0, Lh2/q;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v3

    invoke-virtual {v3}, Li2/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v0, v0, Lh2/q;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public static final synthetic q0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)F
    .locals 0

    iget p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l:F

    return p0
.end method

.method private final q1(Lcom/giphy/sdk/core/models/Media;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->l()Lcom/giphy/sdk/ui/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/o;->a(Lcom/giphy/sdk/core/models/Media;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/core/models/Media;->setBottleData(Lcom/giphy/sdk/core/models/BottleData;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "gph_media"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    const-string v2, "gph_search_term"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 11
    invoke-interface {v0, p1, v1, v2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;->b(Lcom/giphy/sdk/core/models/Media;Ljava/lang/String;Lcom/giphy/sdk/ui/GPHContentType;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->N:Z

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->R:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W:Lcom/giphy/sdk/ui/g;

    if-nez v0, :cond_2

    const-string v1, "recentSearches"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/g;->a(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static final synthetic r0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C:Landroid/view/View;

    return-object p0
.end method

.method private final r1()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "focusSearch"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j1()V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x:Lcom/giphy/sdk/ui/views/GPHMediaTypeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GPHMediaTypeView;->c(Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic s0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/k;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    return-object p0
.end method

.method private final s1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic t0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B1()V

    return-void
.end method

.method public static final synthetic u0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C1()V

    return-void
.end method

.method private final u1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$j;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic v0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->D1()V

    return-void
.end method

.method public static final synthetic w0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E1()V

    return-void
.end method

.method private final w1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic x0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->S:Z

    return p0
.end method

.method private final x1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$l;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$l;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic y0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->T:Z

    return p0
.end method

.method private final y1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method

.method public static final synthetic z0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/ui/universallist/g;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G1(Lcom/giphy/sdk/ui/universallist/g;I)V

    return-void
.end method

.method private final z1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$n;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$n;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    return-object v0
.end method


# virtual methods
.method protected final Q1(Lh2/b;)V
    .locals 0
    .param p1    # Lh2/b;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    return-void
.end method

.method public final R1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    return-void
.end method

.method public getTheme()I
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_0

    const-string v1, "giphySettings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->carousel:Lcom/giphy/sdk/ui/themes/GridType;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/giphy/sdk/ui/p$p;->U3:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/giphy/sdk/ui/p$p;->W3:I

    :goto_0
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "key_screen_change"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "gph_giphy_settings"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/giphy/sdk/ui/GPHSettings;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/giphy/sdk/ui/GPHSettings;

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x1ffff

    const/16 v24, 0x0

    invoke-direct/range {v5 .. v24}, Lcom/giphy/sdk/ui/GPHSettings;-><init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    iput-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "gph_giphy_api_key"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    iput-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, "gph_giphy_metadata_key"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o:Ljava/util/HashMap;

    .line 7
    :cond_3
    iget-object v7, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n:Ljava/lang/String;

    const-string v2, "context!!"

    if-eqz v7, :cond_6

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "gph_giphy_verification_mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v3

    :goto_3
    iput-object v5, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->p:Ljava/lang/Boolean;

    .line 9
    sget-object v5, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->p:Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    const-wide/16 v9, 0x0

    iget-object v11, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o:Ljava/util/HashMap;

    const/4 v12, 0x0

    const/16 v13, 0x28

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lcom/giphy/sdk/ui/l;->i(Lcom/giphy/sdk/ui/l;Landroid/content/Context;Ljava/lang/String;ZJLjava/util/HashMap;Lcom/giphy/sdk/ui/m;ILjava/lang/Object;)V

    .line 10
    :cond_6
    new-instance v5, Lcom/giphy/sdk/ui/g;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/giphy/sdk/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W:Lcom/giphy/sdk/ui/g;

    .line 11
    new-instance v2, Lcom/giphy/sdk/ui/j;

    iget-object v5, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->W:Lcom/giphy/sdk/ui/g;

    if-nez v5, :cond_7

    const-string v6, "recentSearches"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-direct {v2, v5}, Lcom/giphy/sdk/ui/j;-><init>(Lcom/giphy/sdk/ui/g;)V

    iput-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->U:Lcom/giphy/sdk/ui/j;

    .line 12
    iget-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string v5, "giphySettings"

    if-nez v2, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getStickerColumnCount()I

    move-result v2

    const/4 v6, 0x2

    if-lt v2, v6, :cond_a

    iget-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getStickerColumnCount()I

    move-result v2

    const/4 v7, 0x4

    if-le v2, v7, :cond_c

    .line 13
    :cond_a
    iget-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2, v6}, Lcom/giphy/sdk/ui/GPHSettings;->setStickerColumnCount(I)V

    .line 14
    :cond_c
    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    iget-object v6, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v6, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v6}, Lcom/giphy/sdk/ui/GPHSettings;->getTheme()Lcom/giphy/sdk/ui/themes/GPHTheme;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/giphy/sdk/ui/themes/GPHTheme;->getThemeResources$giphy_ui_2_1_9_release(Landroid/content/Context;)Li2/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/giphy/sdk/ui/l;->r(Li2/e;)V

    .line 15
    iget-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getSelectedContentType()Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v2

    .line 16
    iget-object v6, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v6, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v6}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 17
    iget-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v2, :cond_10

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v2}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/giphy/sdk/ui/GPHContentType;

    .line 18
    :cond_11
    iget-object v6, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v6, :cond_12

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v6}, Lcom/giphy/sdk/ui/GPHSettings;->getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v5

    .line 19
    array-length v6, v5

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_15

    aget-object v9, v5, v8

    if-ne v9, v2, :cond_13

    const/4 v10, 0x1

    goto :goto_6

    :cond_13
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_14

    move-object v3, v9

    goto :goto_7

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_15
    :goto_7
    if-eqz v3, :cond_16

    goto :goto_8

    .line 20
    :cond_16
    sget-object v3, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    :goto_8
    iput-object v3, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 21
    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    if-ne v3, v2, :cond_19

    sget-object v2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/l;->l()Lcom/giphy/sdk/ui/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/o;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v4, 0x1

    :cond_18
    if-eqz v4, :cond_19

    .line 22
    sget-object v2, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    iput-object v2, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    :cond_19
    if-eqz v1, :cond_1b

    const-string v2, "key_media_type"

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_1b

    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/giphy/sdk/ui/GPHContentType;

    if-eqz v1, :cond_1a

    goto :goto_9

    :cond_1a
    sget-object v1, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    :goto_9
    iput-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    .line 25
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$g;->D2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g:I

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$g;->C2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h:I

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$g;->B2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j:I

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$g;->v2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->i:I

    .line 29
    iget-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    invoke-direct/range {p0 .. p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->z1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    iget-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->J:Landroid/animation/ValueAnimator;

    const-string v2, "translateAnimator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    iget-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    const-string v2, "openAnimator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    iget-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    invoke-direct/range {p0 .. p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x1()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    iget-object v1, v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    invoke-direct/range {p0 .. p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance p1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "context!!"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    .line 2
    new-instance p1, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    sget p3, Lcom/giphy/sdk/ui/p$j;->B2:I

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 4
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    .line 6
    new-instance p1, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget p2, Lcom/giphy/sdk/ui/p$j;->C2:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 8
    sget-object p2, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object p3

    invoke-virtual {p3}, Li2/e;->f()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    .line 10
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 11
    sget p3, Lcom/giphy/sdk/ui/p$j;->I2:I

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 12
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    new-instance p1, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    iget-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v6, "baseView"

    if-nez p3, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p3, "baseView.context"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    sget p3, Lcom/giphy/sdk/ui/p$j;->G2:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setId(I)V

    .line 15
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object p3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    const-string v1, "giphySettings"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3, v0}, Lcom/giphy/sdk/ui/universallist/e$a;->n(Lcom/giphy/sdk/ui/GPHSettings;)V

    .line 16
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object p3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getShowCheckeredBackground()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/giphy/sdk/ui/universallist/e$a;->r(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifsAdapter()Lcom/giphy/sdk/ui/universallist/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/giphy/sdk/ui/universallist/e;->g()Lcom/giphy/sdk/ui/universallist/e$a;

    move-result-object p3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/GPHSettings;->getImageFormat()Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/giphy/sdk/ui/universallist/e$a;->o(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V

    .line 18
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    .line 19
    invoke-virtual {p2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object p3

    invoke-virtual {p3}, Li2/e;->d()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 20
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p3, "searchBarContainer"

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object p2

    invoke-virtual {p2}, Li2/e;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 21
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p1

    sget-object p2, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    if-eq p1, p2, :cond_6

    goto :goto_0

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Z1()V

    goto :goto_0

    .line 23
    :cond_7
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->U1()V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    const-string v2, "containerView"

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v3, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v3, :cond_b

    const-string v4, "baseViewOverlay"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_d

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1, v3}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;->setDragView(Landroid/view/View;)V

    .line 27
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez v3, :cond_f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1, v3}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;->setSlideView(Landroid/view/View;)V

    .line 28
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 29
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_10

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 30
    invoke-virtual {p1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainDefaultHeight(II)V

    .line 31
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_11

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_12

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 32
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_13

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v3, :cond_14

    const-string v7, "gifsRecyclerView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->I:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_15

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 34
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->G:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p3, :cond_16

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 35
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->H:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p3, :cond_17

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 36
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p1, :cond_1b

    iget-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez p3, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p3}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p3

    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->waterfall:Lcom/giphy/sdk/ui/themes/GridType;

    if-eq p3, v1, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    if-eqz p3, :cond_19

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, p2, :cond_19

    goto :goto_1

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->setHideKeyboardOnSearch(Z)V

    .line 37
    :cond_1b
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p1, :cond_1c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1c
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->C1()V

    .line 3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E1()V

    .line 4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroyView"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g1:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    if-nez v0, :cond_0

    const-string v1, "gifsRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/tracking/d;->r()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->K:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 9
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 10
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 12
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->A:Landroid/view/View;

    .line 14
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->i()V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez v1, :cond_4

    const-string v2, "containerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 17
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    .line 18
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->N:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-interface {v0, v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;->a(Lcom/giphy/sdk/ui/GPHContentType;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->Y()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->E:Lcom/giphy/sdk/ui/views/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->Z()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSaveInstanceState"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g1:Z

    const-string v1, "key_screen_change"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->O:Lcom/giphy/sdk/ui/GPHContentType;

    const-string v1, "key_media_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$s;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$s;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p2, v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->setQueryListener(Lkotlin/jvm/functions/Function1;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$t;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$t;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p2, v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->setOnSearchClickAction(Lkotlin/jvm/functions/Function1;)V

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    const-string v0, "containerView"

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$u;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$u;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p2, v1}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;->setDragAccumulator(Lkotlin/jvm/functions/Function1;)V

    .line 5
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$v;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$v;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p2, v1}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;->setDragRelease(Lkotlin/jvm/functions/Function0;)V

    .line 6
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$w;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$w;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p2, v1}, Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;->setTouchOutside(Lkotlin/jvm/functions/Function0;)V

    .line 7
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m:Lcom/giphy/sdk/ui/GPHSettings;

    if-nez p2, :cond_5

    const-string v1, "giphySettings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p2

    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->carousel:Lcom/giphy/sdk/ui/themes/GridType;

    const/4 v2, 0x4

    if-ne p2, v1, :cond_6

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_7

    const/16 v1, 0x13

    invoke-virtual {p2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 10
    :cond_7
    :goto_0
    new-instance p2, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$x;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$x;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string p2, "baseView"

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 12
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    const-string v1, "baseViewOverlay"

    if-nez p1, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->r:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 15
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->s:Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->f:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 16
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->q:Lcom/giphy/sdk/ui/views/GPHTouchInterceptor;

    if-nez p1, :cond_d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    new-instance p2, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$y;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$y;-><init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m2()V

    return-void
.end method

.method protected final t1()Lh2/b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->B:Lh2/b;

    return-object v0
.end method

.method public final v1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b1:Lcom/giphy/sdk/ui/views/GiphyDialogFragment$b;

    return-object v0
.end method
