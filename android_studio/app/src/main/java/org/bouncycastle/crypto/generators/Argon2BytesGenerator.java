package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.Blake2bDigest;
import org.bouncycastle.crypto.params.Argon2Parameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class Argon2BytesGenerator {
    private static final int ARGON2_ADDRESSES_IN_BLOCK = 128;
    private static final int ARGON2_BLOCK_SIZE = 1024;
    private static final int ARGON2_PREHASH_DIGEST_LENGTH = 64;
    private static final int ARGON2_PREHASH_SEED_LENGTH = 72;
    private static final int ARGON2_QWORDS_IN_BLOCK = 128;
    private static final int ARGON2_SYNC_POINTS = 4;
    private static final long M32L = 4294967295L;
    private static final int MAX_PARALLELISM = 16777216;
    private static final int MIN_ITERATIONS = 1;
    private static final int MIN_OUTLEN = 4;
    private static final int MIN_PARALLELISM = 1;
    private static final byte[] ZERO_BYTES = new byte[4];
    private int laneLength;
    private Block[] memory;
    private Argon2Parameters parameters;
    private int segmentLength;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Block {
        private static final int SIZE = 128;

        /* renamed from: v  reason: collision with root package name */
        private final long[] f91245v;

        private Block() {
            this.f91245v = new long[128];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyBlock(Block block) {
            System.arraycopy(block.f91245v, 0, this.f91245v, 0, 128);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xor(Block block, Block block2) {
            long[] jArr = this.f91245v;
            long[] jArr2 = block.f91245v;
            long[] jArr3 = block2.f91245v;
            for (int i4 = 0; i4 < 128; i4++) {
                jArr[i4] = jArr2[i4] ^ jArr3[i4];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block) {
            long[] jArr = this.f91245v;
            long[] jArr2 = block.f91245v;
            for (int i4 = 0; i4 < 128; i4++) {
                jArr[i4] = jArr[i4] ^ jArr2[i4];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block, Block block2) {
            long[] jArr = this.f91245v;
            long[] jArr2 = block.f91245v;
            long[] jArr3 = block2.f91245v;
            for (int i4 = 0; i4 < 128; i4++) {
                jArr[i4] = jArr[i4] ^ (jArr2[i4] ^ jArr3[i4]);
            }
        }

        public Block clear() {
            Arrays.fill(this.f91245v, 0L);
            return this;
        }

        void fromBytes(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("input shorter than blocksize");
            }
            Pack.littleEndianToLong(bArr, 0, this.f91245v);
        }

        void toBytes(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("output shorter than blocksize");
            }
            Pack.longToLittleEndian(this.f91245v, bArr, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class FillBlock {
        Block R;
        Block Z;
        Block addressBlock;
        Block inputBlock;

        private FillBlock() {
            this.R = new Block();
            this.Z = new Block();
            this.addressBlock = new Block();
            this.inputBlock = new Block();
        }

        private void applyBlake() {
            for (int i4 = 0; i4 < 8; i4++) {
                int i10 = i4 * 16;
                Argon2BytesGenerator.roundFunction(this.Z, i10, i10 + 1, i10 + 2, i10 + 3, i10 + 4, i10 + 5, i10 + 6, i10 + 7, i10 + 8, i10 + 9, i10 + 10, i10 + 11, i10 + 12, i10 + 13, i10 + 14, i10 + 15);
            }
            for (int i11 = 0; i11 < 8; i11++) {
                int i12 = i11 * 2;
                Argon2BytesGenerator.roundFunction(this.Z, i12, i12 + 1, i12 + 16, i12 + 17, i12 + 32, i12 + 33, i12 + 48, i12 + 49, i12 + 64, i12 + 65, i12 + 80, i12 + 81, i12 + 96, i12 + 97, i12 + 112, i12 + 113);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2) {
            this.Z.copyBlock(block);
            applyBlake();
            block2.xor(block, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xor(this.R, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlockWithXor(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xorWith(this.R, this.Z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Position {
        int lane;
        int pass;
        int slice;

        Position() {
        }
    }

    private static void F(long[] jArr, int i4, int i10, int i11, int i12) {
        quarterRound(jArr, i4, i10, i12, 32);
        quarterRound(jArr, i11, i12, i10, 24);
        quarterRound(jArr, i4, i10, i12, 16);
        quarterRound(jArr, i11, i12, i10, 63);
    }

    private static void addByteString(byte[] bArr, Digest digest, byte[] bArr2) {
        if (bArr2 == null) {
            digest.update(ZERO_BYTES, 0, 4);
            return;
        }
        Pack.intToLittleEndian(bArr2.length, bArr, 0);
        digest.update(bArr, 0, 4);
        digest.update(bArr2, 0, bArr2.length);
    }

    private void digest(byte[] bArr, byte[] bArr2, int i4, int i10) {
        Block block = this.memory[this.laneLength - 1];
        for (int i11 = 1; i11 < this.parameters.getLanes(); i11++) {
            int i12 = this.laneLength;
            block.xorWith(this.memory[(i11 * i12) + (i12 - 1)]);
        }
        block.toBytes(bArr);
        hash(bArr, bArr2, i4, i10);
    }

    private void doInit(Argon2Parameters argon2Parameters) {
        int memory = argon2Parameters.getMemory();
        if (memory < argon2Parameters.getLanes() * 8) {
            memory = argon2Parameters.getLanes() * 8;
        }
        int lanes = memory / (argon2Parameters.getLanes() * 4);
        this.segmentLength = lanes;
        this.laneLength = lanes * 4;
        initMemory(lanes * argon2Parameters.getLanes() * 4);
    }

    private void fillFirstBlocks(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[72];
        System.arraycopy(bArr2, 0, bArr3, 0, 64);
        bArr3[64] = 1;
        for (int i4 = 0; i4 < this.parameters.getLanes(); i4++) {
            Pack.intToLittleEndian(i4, bArr2, 68);
            Pack.intToLittleEndian(i4, bArr3, 68);
            hash(bArr2, bArr, 0, 1024);
            this.memory[(this.laneLength * i4) + 0].fromBytes(bArr);
            hash(bArr3, bArr, 0, 1024);
            this.memory[(this.laneLength * i4) + 1].fromBytes(bArr);
        }
    }

    private void fillMemoryBlocks() {
        FillBlock fillBlock = new FillBlock();
        Position position = new Position();
        for (int i4 = 0; i4 < this.parameters.getIterations(); i4++) {
            position.pass = i4;
            for (int i10 = 0; i10 < 4; i10++) {
                position.slice = i10;
                for (int i11 = 0; i11 < this.parameters.getLanes(); i11++) {
                    position.lane = i11;
                    fillSegment(fillBlock, position);
                }
            }
        }
    }

    private void fillSegment(FillBlock fillBlock, Position position) {
        Block block;
        Block block2;
        boolean isDataIndependentAddressing = isDataIndependentAddressing(position);
        int startingIndex = getStartingIndex(position);
        int i4 = (position.lane * this.laneLength) + (position.slice * this.segmentLength) + startingIndex;
        int prevOffset = getPrevOffset(i4);
        if (isDataIndependentAddressing) {
            Block clear = fillBlock.addressBlock.clear();
            Block clear2 = fillBlock.inputBlock.clear();
            initAddressBlocks(fillBlock, position, clear2, clear);
            block = clear;
            block2 = clear2;
        } else {
            block = null;
            block2 = null;
        }
        boolean isWithXor = isWithXor(position);
        int i10 = startingIndex;
        int i11 = i4;
        int i12 = prevOffset;
        while (i10 < this.segmentLength) {
            long pseudoRandom = getPseudoRandom(fillBlock, i10, block, block2, i12, isDataIndependentAddressing);
            int refLane = getRefLane(position, pseudoRandom);
            int refColumn = getRefColumn(position, i10, pseudoRandom, refLane == position.lane);
            Block[] blockArr = this.memory;
            Block block3 = blockArr[i12];
            Block block4 = blockArr[(this.laneLength * refLane) + refColumn];
            Block block5 = blockArr[i11];
            if (isWithXor) {
                fillBlock.fillBlockWithXor(block3, block4, block5);
            } else {
                fillBlock.fillBlock(block3, block4, block5);
            }
            i10++;
            i12 = i11;
            i11++;
        }
    }

    private int getPrevOffset(int i4) {
        int i10 = this.laneLength;
        return i4 % i10 == 0 ? (i4 + i10) - 1 : i4 - 1;
    }

    private long getPseudoRandom(FillBlock fillBlock, int i4, Block block, Block block2, int i10, boolean z9) {
        if (z9) {
            int i11 = i4 % 128;
            if (i11 == 0) {
                nextAddresses(fillBlock, block2, block);
            }
            return block.f91245v[i11];
        }
        return this.memory[i10].f91245v[0];
    }

    private int getRefColumn(Position position, int i4, long j4, boolean z9) {
        int i10;
        int i11;
        int i12 = position.pass;
        int i13 = 0;
        int i14 = position.slice;
        if (i12 != 0) {
            int i15 = this.segmentLength;
            int i16 = this.laneLength;
            int i17 = ((i14 + 1) * i15) % i16;
            int i18 = i16 - i15;
            if (z9) {
                i10 = (i18 + i4) - 1;
            } else {
                i10 = i18 + (i4 != 0 ? 0 : -1);
            }
            i13 = i17;
            i11 = i10;
        } else if (z9) {
            i11 = ((i14 * this.segmentLength) + i4) - 1;
        } else {
            i11 = (i14 * this.segmentLength) + (i4 != 0 ? 0 : -1);
        }
        long j10 = j4 & M32L;
        return ((int) (i13 + ((i11 - 1) - ((i11 * ((j10 * j10) >>> 32)) >>> 32)))) % this.laneLength;
    }

    private int getRefLane(Position position, long j4) {
        int lanes = (int) ((j4 >>> 32) % this.parameters.getLanes());
        return (position.pass == 0 && position.slice == 0) ? position.lane : lanes;
    }

    private static int getStartingIndex(Position position) {
        return (position.pass == 0 && position.slice == 0) ? 2 : 0;
    }

    private void hash(byte[] bArr, byte[] bArr2, int i4, int i10) {
        byte[] bArr3 = new byte[4];
        Pack.intToLittleEndian(i10, bArr3, 0);
        if (i10 <= 64) {
            Blake2bDigest blake2bDigest = new Blake2bDigest(i10 * 8);
            blake2bDigest.update(bArr3, 0, 4);
            blake2bDigest.update(bArr, 0, bArr.length);
            blake2bDigest.doFinal(bArr2, i4);
            return;
        }
        Blake2bDigest blake2bDigest2 = new Blake2bDigest(512);
        byte[] bArr4 = new byte[64];
        blake2bDigest2.update(bArr3, 0, 4);
        blake2bDigest2.update(bArr, 0, bArr.length);
        blake2bDigest2.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr2, i4, 32);
        int i11 = i4 + 32;
        int i12 = 2;
        int i13 = ((i10 + 31) / 32) - 2;
        while (i12 <= i13) {
            blake2bDigest2.update(bArr4, 0, 64);
            blake2bDigest2.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i11, 32);
            i12++;
            i11 += 32;
        }
        Blake2bDigest blake2bDigest3 = new Blake2bDigest((i10 - (i13 * 32)) * 8);
        blake2bDigest3.update(bArr4, 0, 64);
        blake2bDigest3.doFinal(bArr2, i11);
    }

    private void initAddressBlocks(FillBlock fillBlock, Position position, Block block, Block block2) {
        block.f91245v[0] = intToLong(position.pass);
        block.f91245v[1] = intToLong(position.lane);
        block.f91245v[2] = intToLong(position.slice);
        block.f91245v[3] = intToLong(this.memory.length);
        block.f91245v[4] = intToLong(this.parameters.getIterations());
        block.f91245v[5] = intToLong(this.parameters.getType());
        if (position.pass == 0 && position.slice == 0) {
            nextAddresses(fillBlock, block, block2);
        }
    }

    private void initMemory(int i4) {
        this.memory = new Block[i4];
        int i10 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (i10 >= blockArr.length) {
                return;
            }
            blockArr[i10] = new Block();
            i10++;
        }
    }

    private void initialize(byte[] bArr, byte[] bArr2, int i4) {
        Blake2bDigest blake2bDigest = new Blake2bDigest(512);
        Pack.intToLittleEndian(new int[]{this.parameters.getLanes(), i4, this.parameters.getMemory(), this.parameters.getIterations(), this.parameters.getVersion(), this.parameters.getType()}, bArr, 0);
        blake2bDigest.update(bArr, 0, 24);
        addByteString(bArr, blake2bDigest, bArr2);
        addByteString(bArr, blake2bDigest, this.parameters.getSalt());
        addByteString(bArr, blake2bDigest, this.parameters.getSecret());
        addByteString(bArr, blake2bDigest, this.parameters.getAdditional());
        byte[] bArr3 = new byte[72];
        blake2bDigest.doFinal(bArr3, 0);
        fillFirstBlocks(bArr, bArr3);
    }

    private long intToLong(int i4) {
        return i4 & M32L;
    }

    private boolean isDataIndependentAddressing(Position position) {
        if (this.parameters.getType() != 1) {
            return this.parameters.getType() == 2 && position.pass == 0 && position.slice < 2;
        }
        return true;
    }

    private boolean isWithXor(Position position) {
        return (position.pass == 0 || this.parameters.getVersion() == 16) ? false : true;
    }

    private void nextAddresses(FillBlock fillBlock, Block block, Block block2) {
        long[] jArr = block.f91245v;
        jArr[6] = jArr[6] + 1;
        fillBlock.fillBlock(block, block2);
        fillBlock.fillBlock(block2, block2);
    }

    private static void quarterRound(long[] jArr, int i4, int i10, int i11, int i12) {
        long j4 = jArr[i4];
        long j10 = jArr[i10];
        long j11 = jArr[i11];
        long j12 = j4 + j10 + ((j4 & M32L) * 2 * (M32L & j10));
        long rotateRight = Longs.rotateRight(j11 ^ j12, i12);
        jArr[i4] = j12;
        jArr[i11] = rotateRight;
    }

    private void reset() {
        if (this.memory == null) {
            return;
        }
        int i4 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (i4 >= blockArr.length) {
                return;
            }
            Block block = blockArr[i4];
            if (block != null) {
                block.clear();
            }
            i4++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void roundFunction(Block block, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24) {
        long[] jArr = block.f91245v;
        F(jArr, i4, i13, i17, i21);
        F(jArr, i10, i14, i18, i22);
        F(jArr, i11, i15, i19, i23);
        F(jArr, i12, i16, i20, i24);
        F(jArr, i4, i14, i19, i24);
        F(jArr, i10, i15, i20, i21);
        F(jArr, i11, i16, i17, i22);
        F(jArr, i12, i13, i18, i23);
    }

    public int generateBytes(byte[] bArr, byte[] bArr2) {
        return generateBytes(bArr, bArr2, 0, bArr2.length);
    }

    public int generateBytes(byte[] bArr, byte[] bArr2, int i4, int i10) {
        if (i10 >= 4) {
            byte[] bArr3 = new byte[1024];
            initialize(bArr3, bArr, i10);
            fillMemoryBlocks();
            digest(bArr3, bArr2, i4, i10);
            reset();
            return i10;
        }
        throw new IllegalStateException("output length less than 4");
    }

    public int generateBytes(char[] cArr, byte[] bArr) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr);
    }

    public int generateBytes(char[] cArr, byte[] bArr, int i4, int i10) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr, i4, i10);
    }

    public void init(Argon2Parameters argon2Parameters) {
        this.parameters = argon2Parameters;
        if (argon2Parameters.getLanes() < 1) {
            throw new IllegalStateException("lanes must be greater than 1");
        }
        if (argon2Parameters.getLanes() > 16777216) {
            throw new IllegalStateException("lanes must be less than 16777216");
        }
        if (argon2Parameters.getMemory() >= argon2Parameters.getLanes() * 2) {
            if (argon2Parameters.getIterations() < 1) {
                throw new IllegalStateException("iterations is less than: 1");
            }
            doInit(argon2Parameters);
            return;
        }
        throw new IllegalStateException("memory is less than: " + (argon2Parameters.getLanes() * 2) + " expected " + (argon2Parameters.getLanes() * 2));
    }
}
