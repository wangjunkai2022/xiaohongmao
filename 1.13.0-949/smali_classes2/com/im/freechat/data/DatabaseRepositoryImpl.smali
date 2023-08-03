.class public final Lcom/im/freechat/data/DatabaseRepositoryImpl;
.super Ljava/lang/Object;
.source "DatabaseRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/c;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatabaseRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n47#2:298\n49#2:302\n47#2:303\n49#2:307\n47#2:339\n49#2:343\n47#2:344\n49#2:348\n47#2:349\n49#2:353\n47#2:354\n49#2:358\n47#2:363\n49#2:367\n47#2:368\n49#2:372\n47#2:373\n49#2:377\n47#2:382\n49#2:386\n47#2:400\n49#2:404\n20#2:418\n22#2:422\n54#2:423\n57#2:427\n47#2:428\n49#2:432\n47#2:433\n49#2:437\n47#2:438\n49#2:442\n50#3:299\n55#3:301\n50#3:304\n55#3:306\n50#3:340\n55#3:342\n50#3:345\n55#3:347\n50#3:350\n55#3:352\n50#3:355\n55#3:357\n50#3:364\n55#3:366\n50#3:369\n55#3:371\n50#3:374\n55#3:376\n50#3:383\n55#3:385\n50#3:401\n55#3:403\n50#3:419\n55#3:421\n50#3:424\n55#3:426\n50#3:429\n55#3:431\n50#3:434\n55#3:436\n50#3:439\n55#3:441\n106#4:300\n106#4:305\n106#4:341\n106#4:346\n106#4:351\n106#4:356\n106#4:365\n106#4:370\n106#4:375\n106#4:384\n106#4:402\n106#4:420\n106#4:425\n106#4:430\n106#4:435\n106#4:440\n1549#5:308\n1620#5,3:309\n766#5:312\n857#5,2:313\n1851#5,2:315\n1549#5:317\n1620#5,3:318\n1549#5:322\n1620#5,3:323\n1603#5,9:326\n1851#5:335\n1852#5:337\n1612#5:338\n1549#5:359\n1620#5,3:360\n1549#5:378\n1620#5,3:379\n1603#5,9:387\n1851#5:396\n1852#5:398\n1612#5:399\n1603#5,9:405\n1851#5:414\n1852#5:416\n1612#5:417\n1#6:321\n1#6:336\n1#6:397\n1#6:415\n*S KotlinDebug\n*F\n+ 1 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n*L\n50#1:298\n50#1:302\n60#1:303\n60#1:307\n123#1:339\n123#1:343\n129#1:344\n129#1:348\n141#1:349\n141#1:353\n154#1:354\n154#1:358\n180#1:363\n180#1:367\n184#1:368\n184#1:372\n196#1:373\n196#1:377\n235#1:382\n235#1:386\n257#1:400\n257#1:404\n276#1:418\n276#1:422\n277#1:423\n277#1:427\n285#1:428\n285#1:432\n289#1:433\n289#1:437\n294#1:438\n294#1:442\n50#1:299\n50#1:301\n60#1:304\n60#1:306\n123#1:340\n123#1:342\n129#1:345\n129#1:347\n141#1:350\n141#1:352\n154#1:355\n154#1:357\n180#1:364\n180#1:366\n184#1:369\n184#1:371\n196#1:374\n196#1:376\n235#1:383\n235#1:385\n257#1:401\n257#1:403\n276#1:419\n276#1:421\n277#1:424\n277#1:426\n285#1:429\n285#1:431\n289#1:434\n289#1:436\n294#1:439\n294#1:441\n50#1:300\n60#1:305\n123#1:341\n129#1:346\n141#1:351\n154#1:356\n180#1:365\n184#1:370\n196#1:375\n235#1:384\n257#1:402\n276#1:420\n277#1:425\n285#1:430\n289#1:435\n294#1:440\n66#1:308\n66#1:309,3\n67#1:312\n67#1:313,2\n68#1:315,2\n69#1:317\n69#1:318,3\n99#1:322\n99#1:323,3\n107#1:326,9\n107#1:335\n107#1:337\n107#1:338\n159#1:359\n159#1:360,3\n216#1:378\n216#1:379,3\n250#1:387,9\n250#1:396\n250#1:398\n250#1:399\n263#1:405,9\n263#1:414\n263#1:416\n263#1:417\n107#1:336\n250#1:397\n263#1:415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010Y\u001a\u00020W\u0012\u0006\u0010\\\u001a\u00020Z\u0012\u0006\u0010_\u001a\u00020]\u0012\u0006\u0010b\u001a\u00020`\u0012\u0006\u0010e\u001a\u00020c\u0012\u0006\u0010h\u001a\u00020f\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\u0016J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\u0016J!\u0010\r\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u001b\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u001b\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u000eJ\u001d\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010\u0018J\'\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010\u000eJ\u001b\u0010#\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\u0018J\u001b\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010\u0018J!\u0010&\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\u000eJ\u0014\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007H\u0016J\u0014\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007H\u0016J#\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00152\u0006\u0010+\u001a\u00020*H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J#\u0010/\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00152\u0006\u0010.\u001a\u00020*H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010-J\u0014\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u00080\u0007H\u0016J\u001c\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030\u00080\u00072\u0006\u00102\u001a\u00020\u0015H\u0016J\u0019\u00105\u001a\u0008\u0012\u0004\u0012\u0002000\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u0004J\u0019\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010\u0004J\u0019\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010\u0004J\u001d\u00108\u001a\u0004\u0018\u0001002\u0006\u00102\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u0018J\u0018\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001000\u00072\u0006\u00102\u001a\u00020\u0015H\u0016J\u0018\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J%\u0010<\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00152\u0008\u0010;\u001a\u0004\u0018\u00010*H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008<\u0010-J\u0018\u0010=\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J\u001c\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u00080\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J\u0015\u0010?\u001a\u0004\u0018\u00010\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008?\u0010\u0004J!\u0010A\u001a\u00020\u00022\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010\u000eJ\'\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00082\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010\u000eJ#\u0010D\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010EJ/\u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020G0\u00080\u00072\u0006\u00102\u001a\u00020\u00152\u0006\u0010F\u001a\u00020\u0012H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJ!\u0010K\u001a\u0008\u0012\u0004\u0012\u00020G0\u00082\u0006\u0010J\u001a\u00020*H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LJ#\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010G0\u00072\u0006\u0010M\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008N\u0010\u0018J\'\u0010O\u001a\u0008\u0012\u0004\u0012\u00020G0\u00082\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010\u000eJ\u0013\u0010P\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008P\u0010\u0004J\u0019\u0010R\u001a\u0008\u0012\u0004\u0012\u00020Q0\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010\u0004J\u0014\u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020S0\u00080\u0007H\u0016J\u0014\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020S0\u00080\u0007H\u0016J\u0018\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010S0\u00072\u0006\u0010$\u001a\u00020\u0015H\u0016R\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010XR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010[R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010^R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010aR\u0014\u0010e\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010dR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010gR\u0014\u0010k\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010jR\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010mR\u0014\u0010q\u001a\u00020o8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010pR\u0014\u0010t\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010sR\u0014\u0010w\u001a\u00020u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010vR\u0014\u0010z\u001a\u00020x8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010yR\u0014\u0010}\u001a\u00020{8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010|\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/im/freechat/data/DatabaseRepositoryImpl;",
        "Lcom/im/freechat/domain/c;",
        "",
        "a",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "j",
        "Lkotlinx/coroutines/flow/i;",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "r",
        "L",
        "list",
        "N",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "item",
        "u",
        "(Lcom/im/freechat/shared/entities/DownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "mediaIds",
        "J",
        "",
        "contactId",
        "c",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "v",
        "n",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "info",
        "D",
        "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "q",
        "o",
        "contactIds",
        "B",
        "z",
        "targetUserId",
        "g",
        "i",
        "w",
        "I",
        "userId",
        "",
        "userMask",
        "M",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "userName",
        "k",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "t",
        "chatId",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "O",
        "h",
        "F",
        "S",
        "A",
        "P",
        "f",
        "draftMessage",
        "C",
        "d",
        "x",
        "m",
        "presentIds",
        "E",
        "users",
        "l",
        "K",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "laterThan",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "y",
        "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "query",
        "Q",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "id",
        "p",
        "R",
        "b",
        "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
        "s",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "H",
        "e",
        "G",
        "Lcom/im/freechat/data/sources/database/MainDatabase;",
        "Lcom/im/freechat/data/sources/database/MainDatabase;",
        "mainDatabase",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;",
        "downloadEntityMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "contactEntityMapper",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "chatMapper",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "messageMapper",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "chatRequestMapper",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;",
        "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;",
        "downloadDao",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "userDao",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "chatDao",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;",
        "memberDao",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "messageDao",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "attachmentDao",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "friendStatusDao",
        "<init>",
        "(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;)V",
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
.field private final a:Lcom/im/freechat/data/sources/database/MainDatabase;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/MainDatabase;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "mainDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadEntityMapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactEntityMapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageMapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRequestMapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->a:Lcom/im/freechat/data/sources/database/MainDatabase;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->f:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->downloadDao()Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->userDao()Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    .line 10
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->chatDao()Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 11
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->memberDao()Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->j:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->messageDao()Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->attachmentDao()Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->l:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->friendStatusDao()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    return-void
.end method

.method public static final synthetic T(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    return-object p0
.end method

.method public static final synthetic U(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->f:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    return-object p0
.end method

.method public static final synthetic V(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    return-object p0
.end method

.method public static final synthetic W(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    return-object p0
.end method

.method public static final synthetic X(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    return-object p0
.end method

.method public static final synthetic Y(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    return-object p0
.end method


# virtual methods
.method public A(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$b;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    if-eqz p2, :cond_4

    .line 6
    iget-object v0, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    iget-object v1, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    iget-object p1, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v0, p2, v1, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;->map(Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;)Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public B(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$e;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getContacts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 9
    iget-object v2, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v2, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public C(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateDraftMessage(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public D(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/auth/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iget-object v1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->asContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/shared/entities/contact/UserModel;)Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public E(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->deleteChatsNotInList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getNonPredefinedChatIds$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getChatRequestByTargetId(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v0
.end method

.method public H()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public I()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenFriends$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenFriends$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public J(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->e:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;->getDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 6
    iget-object v4, v2, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    invoke-virtual {v4, p2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->reverseMap(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 7
    iget-object v2, v2, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$i;->e:I

    invoke-virtual {v2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;->removeDownloads(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method public K(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->j:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 2
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    .line 3
    sget-object v2, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    .line 4
    sget-object v3, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    .line 5
    invoke-direct {v1, p2, p1, v2, v3}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    .line 6
    invoke-virtual {v0, v1, p3}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public L()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;->getFilesByStatuses([I)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
    .end array-data
.end method

.method public M(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->updateUserMask(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public N(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->f:I

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lcom/im/freechat/shared/entities/DownloadInfo;

    .line 8
    invoke-virtual {p2, v7}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->map(Lcom/im/freechat/shared/entities/DownloadInfo;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    .line 11
    invoke-virtual {v7}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getStatus()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v6, p0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    .line 13
    iget-object v7, v6, Lcom/im/freechat/data/DatabaseRepositoryImpl;->l:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getMediaId()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    iput-object v6, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->b:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->c:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->f:I

    invoke-virtual {v7, v8, v9, v2, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentLocalPath(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    .line 14
    :cond_9
    iget-object p1, v6, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    iget-object v2, v6, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Lcom/im/freechat/shared/entities/DownloadInfo;

    .line 18
    invoke-virtual {v2, v3}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->map(Lcom/im/freechat/shared/entities/DownloadInfo;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const/4 p2, 0x0

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$j;->f:I

    invoke-virtual {p1, v5, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public O(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->j:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao;->listenAllContactsForChat(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v0
.end method

.method public P(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->subscribeChat(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeChat$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeChat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v0
.end method

.method public Q(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$k;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->findMessagesByQuery(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    move-object v3, v1

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 9
    iget-object v2, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    iget-object v4, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public R(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$g;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesToForward(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    move-object v3, v1

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 9
    iget-object v2, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    iget-object v4, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public S(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->listenTotalUnreadCount()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->listenCountWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$h;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/flow/k;->J0(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->a:Lcom/im/freechat/data/sources/database/MainDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->clearAllTables()V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->resetSendings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public c(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->blockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public d(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->listenSingleChatForUserId(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public e()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public f(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->subscribeContact(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeContact$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeContact$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v0
.end method

.method public g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->m:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteByUserId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$c;->d:I

    invoke-virtual {p1, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getAllChats(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    .line 9
    iget-object v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->d:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    iget-object v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    iget-object v5, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->e:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v3, v2, v4, v5}, Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;->map(Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;)Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iget-object v1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v1, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->synchronizeDatabase(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$f;->d:I

    invoke-virtual {p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 6
    iget-object v0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public k(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->updateUserName(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public l(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$a;->c:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getContacts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 9
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getServiceChatId$default(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->followContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public o(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$d;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->reverseMap(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public p(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {p2, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->subscribePinnedMessageByChatId(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object p2
.end method

.method public q(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 5
    iget-object v3, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->c:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v3, v2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/shared/entities/contact/UserModel;)Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->synchronizeDatabase(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public r()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;->getDownloads()Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/message/MessageWithChat;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->subscribeLastReceivedMessage()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlinx/coroutines/flow/k;->s0(Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$l;->a:Lcom/im/freechat/data/DatabaseRepositoryImpl$l;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/k;->h0(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/k;->j0(Lkotlinx/coroutines/flow/i;I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1;

    invoke-direct {v0, p1}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    .line 6
    new-instance p1, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1;

    invoke-direct {p1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object p1
.end method

.method public t()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->subscribeChats()Lkotlinx/coroutines/flow/i;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/k;->g0(Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeChats$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeChats$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public u(Lcom/im/freechat/shared/entities/DownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/DownloadInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->g:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    iget-object v1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->b:Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;

    invoke-virtual {v1, p1}, Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;->map(Lcom/im/freechat/shared/entities/DownloadInfo;)Lcom/im/freechat/data/sources/database/entities/download/DownloadEntity;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public v(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->unblockContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public w()Lkotlinx/coroutines/flow/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->listenAllContacts()Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v1
.end method

.method public x(I)Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->i:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->listenCommonGroupsForUserId(I)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V

    return-object v0
.end method

.method public y(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "+",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->k:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->subscribeMessages(IJ)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/k;->g0(Lkotlinx/coroutines/flow/i;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1;

    invoke-direct {p2, p1, p0, p4}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/data/DatabaseRepositoryImpl;Ljava/util/Map;)V

    return-object p2
.end method

.method public z(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl;->h:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->removeContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
